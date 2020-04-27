view: code_samples {

# Dynamic value format
#  [>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";


# Formatting single value viz outputs
# e-bot7


  dimension: dash_title {
    sql:  {% if _user_attributes['locale']  == 'en' %} 'MAIN STATS - OVER TIME'
          {% else  %} 'HAUPTZUSTÄNDE - IM LAUFE DER ZEIT'
          {% endif %};;
    html: <div class="vis">
          <div class="vis-single-value" style="background-color: #d6d6d6">
          <p style="color: #707070; font-size: 30px; font-weight: bolder"> {{ rendered_value }} </p>
          </div>
          </div>
          ;;
  }

  # html: <p style="color: black; font-size: 100px; font-weight: bolder"> {{ rendered_value }} </p> ;;

  #### Liquid #######


  # Using liquid to dynamically enable drill paths based on dashboard filters
  # e-bot7 / eShopWorld

  measure: count_messages {
    label: "All Messages"
    type: count_distinct
    sql: 1 ;;
    link: {
      label: "{% if _filters['message_categories.category_name'] == '' %} {% else %} View messages by category {% endif %}"
      url: "https://looker.production.e-bot7.de/dashboards/11?Bot={{_filters['bots.botname'] | url_encode }}&Status={{_filters['convs.statusFirstMessage'] | url_encode }}&Date={{_filters['convs.createdAt_date'] | url_encode }}&Chat%20Origin={{_filters['convs.chatOrigin'] | url_encode }}&Chats%20with%20Visitor%20Interaction={{_filters['convs.hasVisitorInteraction'] | url_encode }}"
    }
    link: {
      label: "View dashboards for links"
      url: "https://looker.production.e-bot7.de/dashboards/8?Bot={{_filters['bots.botname'] | url_encode }}&Status={{_filters['convs.statusFirstMessage'] | url_encode }}&Date={{_filters['convs.createdAt_date'] | url_encode }}&Chat%20Origin={{_filters['convs.chatOrigin'] | url_encode }}&Chats%20with%20Visitor%20Interaction={{_filters['convs.hasVisitorInteraction'] | url_encode }}"
    }
  }



  # Using liquid to dynamically enable drill paths based on the value of annother measure
  # e-bot7


  measure: count_chats {
    label: "All Chats"
    type: count_distinct
    link: {
      label: "{% if conv_categories.count_categories._rendered_value == '0' %} {% else %} View chats by category {% endif %}"
      url: "https://looker.production.e-bot7.de/dashboards/12?Bot={{_filters['bots.botname'] | url_encode }}&Status={{_filters['convs.statusFirstMessage'] | url_encode }}&Date={{_filters['convs.createdAt_date'] | url_encode }}&Chat%20Origin={{_filters['convs.chatOrigin'] | url_encode }}&Chats%20with%20Visitor%20Interaction={{_filters['convs.hasVisitorInteraction'] | url_encode }}"
      }
    sql:  1 ;;
    }
  }



  ################################################

  # Beryl


view: availability_snapshot {
  derived_table: {
    sql:
      with generated_timestamp_seq as (
      select * from
      -- UNNEST(GENERATE_TIMESTAMP_ARRAY({% date_start date_range %}, {% date_end date_range %},  #### Funny results being returned - Need to investigate
      UNNEST(GENERATE_TIMESTAMP_ARRAY('2019-07-04 00:00:00', current_timestamp,
                                      INTERVAL 1 {% parameter availability_period %})) as timestamp
      cross join (select distinct bike.module_id from master.availability join master.bike on availability.module_id = bike.module_id)
      )
      -- Build a table for all Bikes (module_id) for all datetime periods
      -- Time period (i.e. day / hour / minute ) is set using the availability_period parameter and iniected into the SQL using liquid


      -- Because a status will only exist for the timestamp period when the status was generated, we need to fill the missing status values for all other timestamps
      -- Join the generated timestamp to master.availability and fill missing status values by using the first_value window function
      select  timestamp,
              status_fill as status,
              scheme.name as scheme,
              count(*) as count
      from (
        select  timestamp,
              generated_timestamp_seq.module_id as seq_module_id,
              availability.*,
              first_value(status IGNORE NULLS) over (partition by generated_timestamp_seq.module_id order by timestamp desc ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) as status_fill
        from generated_timestamp_seq
        left join master.availability
          on generated_timestamp_seq.timestamp = timestamp_trunc(availability.created_at,{% parameter availability_period %})
          and generated_timestamp_seq.module_id = availability.module_id
        )
      join master.bike on seq_module_id = bike.module_id
      join master.scheme on bike.scheme_id = scheme.id
      where status_fill is not null
      group by 1,2,3
       ;;
  }}


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

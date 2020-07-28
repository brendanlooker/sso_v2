view: dates_cross {
  derived_table: {
    sql:
      select 'booking' as version
      union all
      select 'submission' as version
          ;;
  }
  dimension: version {
    primary_key:yes
    hidden:yes
  }

  dimension_group: activity {
    convert_tz: no
    type: time
    timeframes: [date,month,year]
    sql: case when ${version} = 'booking' then ${applications.booking_date} else ${applications.first_submission_date} end;;
  }
}

# measure: count_booking {
#   type: count
#   filters: [dates_cross.version: "booking"]
# }
# measure: count_submission {
#   type: count
#   filters: [dates_cross.version: "submission"]
# }

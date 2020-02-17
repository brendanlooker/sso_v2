connection: "thelook_events_redshift"

# include all the views
include: "*.view"
include: "*products_dashboard.dashboard"
# include: "brendan_dashboard.dashboard"
# include: "performance_dash.dashboard"
include: "conditional_formatting_dash.dashboard"
include: "model.base.lkml"

explore: users_facts_bkw {}

datagroup: dv_datagroup {
  max_cache_age: "12 hours"
#   sql_trigger:select current_date;;
}

####################

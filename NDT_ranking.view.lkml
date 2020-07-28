view: country_ranking {
  derived_table: {
    explore_source: CARR {
      column: country { field: accounts.country }
      column: CARR { field: account_monthly_carr.CARR }
      column: Added_CARR { field: account_monthly_carr.Added_CARR }
      column: Lost_CARR { field: account_monthly_carr.Lost_CARR }
      column: Average_CARR_per_Account { field: account_monthly_carr.Average_CARR_per_Account }
      column: customer_accounts { field: account_monthly_carr.customer_accounts }
      column: count_opportunities { field: opportunity_history_tbl.count_opportunities }

      derived_column: rank {
        sql: rank() over (order by
          {% if account_monthly_carr.dynamic_metric._parameter_value == 'carr' %} CARR
          {% elsif account_monthly_carr.dynamic_metric._parameter_value == 'added_carr' %} Added_CARR
          {% elsif account_monthly_carr.dynamic_metric._parameter_value == 'lost_carr' %} Lost_CARR
          {% elsif account_monthly_carr.dynamic_metric._parameter_value == 'avg_deal_size' %} $Average_CARR_per_Account
          {% elsif account_monthly_carr.dynamic_metric._parameter_value == 'customer_accounts' %} customer_accounts
          {% elsif account_monthly_carr.dynamic_metric._parameter_value == 'transaction_count' %} count_opportunities
          {% endif %} desc) ;;
      }
      bind_all_filters: yes
    }
  }
  dimension: country {primary_key:yes hidden:yes}

  dimension: rank {
    type: number
  }
}

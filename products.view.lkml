view: products {
  sql_table_name: public.products ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;

    link: {
      label: "Google {{ value }}"
      url: "http://www.google.com/search?q={{ value | url_encode }}"
      icon_url: "http://google.com/favicon.ico"
    }


    link: {
      label: "Drill to Product Dashboard"
      url: "/dashboards/21?Brand={{ value }}"
      icon_url: "https://looker.com/favicon.ico"
    }

    link: {
      label: "Drill to Product Dashboard2"
      url: "/dashboards/21?Brand={{ value }}&Category={{ _filters['products.category'] | url_encode }}"
      icon_url: "https://looker.com/favicon.ico"
    }

    link: {
      label: "Drill to Product Dashboard3"
      url: "/dashboards/21?Brand={{ value }}"
      icon_url: "https://looker.com/favicon.ico"
    }

    link: {
      label: "Drill to Product Look"
      url: "/looks/44??&f[products.brand]={{ value | url_encode }}" # Path to Look content
      icon_url: "https://looker.com/favicon.ico"
    }

    link: {
      label: "Drill to Product - No Filter"
      url: "/looks/44?" # Path to Look content
      icon_url: "https://looker.com/favicon.ico"
    }

    link: {
      label: "Drill to Product ScatterPlot Look"
      url: "/looks/44??&f[products.brand]={{ value | url_encode }}" # Path to Look content
      icon_url: "https://looker.com/favicon.ico"
    }

    link: {
      label: "Drill to Product Explore"
      url: "/explore/sso_demo/order_items?fields=products.brand,products.category,products.cost,products.department,products.distribution_center_id,products.product_count&limit=100"
      icon_url: "https://looker.com/favicon.ico"
    }


    action: {
      label: "Reach out to {{products.bb_email._value}}"
      url: "https://hooks.zapier.com/hooks/catch/5803443/o2khmds/"
      icon_url: "https://www.looker.com/favicon.ico"
      form_param: {
        name: "Subject"
        type: string
        required:  yes
        default: "Local Brand"
      }
      param: {
        name: "Email"
        value: "{{ products.bb_email._value }}"

      }
      form_param: {
        name: "Description"
        type: textarea
        required: yes
        default:
        "{{value}} looks like they were a good brand that have recently churned. Can we reach out to them and see if we can retain them?

        Sent by: {{_user_attributes.email}}."
      }
      form_param: {
        name: "Recipient"
        type: select
        default: "Brand Primary Contact"
        option: {
          name: " {{ designers_designer.bb_email._value }}"
          label: "Brand Primary Contact"
        }
        option: {
          name: " {{ designers_designer.bb_email._value }}"
          label: "Internal Contact"
        }
      }
      form_param: {
        name: "Send Me a Copy"
        type: select
        default: "yes"
        option: {
          name: "yes"
          label: "yes"
        }
      }
    }





    # html: <span style="font-weight: 500">{{rendered_value}}</span>;;
    # <span style="font-size: 18px">{{ rendered_value }}</span>;;


    drill_fields: [department,category, name]
  }

  dimension: bb_email {
    type: string
    sql: 'brendan.buckley@looker.com' ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
    drill_fields: [department, name]
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
    drill_fields: [name]
  }

  dimension: distribution_center_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.distribution_center_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
    drill_fields: [retail_price]
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
    # drill_fields: [product_set*]
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
    drill_fields: [my_set*]
  }

  measure: product_count {
    type: count
    # drill_fields: [id, name, distribution_centers.id, distribution_centers.name, inventory_items.count]
    drill_fields: [my_set*]
  }
  # set: product_set {
  #   fields: [brand,department,category,name,retail_price]
  # }

  set: my_set {
    fields: [department,retail_price]
  }
}

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
      label: "Drill to Product PieChart Look"
      url: "/looks/44??&f[products.brand]={{ value | url_encode }}" # Path to Look content
      icon_url: "https://looker.com/favicon.ico"
    }

    link: {
      label: "Drill to Product BarChart Look"
      url: "/looks/44??&f[products.brand]={{ value | url_encode }}" # Path to Look content
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




    link: {
      label: "Google {{ value }}"
      url: "http://www.google.com/search?q={{ value | url_encode }}"
      icon_url: "http://google.com/favicon.ico"
    }
    # html: <span style="font-weight: 500">{{rendered_value}}</span>;;
    # <span style="font-size: 18px">{{ rendered_value }}</span>;;

    link: {
      label: "Drill to Product Dashboard"
      url: "/dashboards/21?Brand={{ value }}"
      icon_url: "https://looker.com/favicon.ico"
    }




    drill_fields: [department,category]
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

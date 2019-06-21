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
      url: "http://www.google.com/search?q={{ value }}"
      icon_url: "http://google.com/favicon.ico"
    }

    link: {
      label: "Drill to Product Dashboard"
      url: "/dashboards/21?Brand={{ value | url_encode }}"
      icon_url: "https://looker.com/favicon.ico"
    }

    link: {
      label: "Drill to Product Dashboard2"
      url: "/dashboards/20?Brand={{ value | url_encode }}"
      icon_url: "https://looker.com/favicon.ico"
    }

    link: {
      label: "Drill to Product Dashboard3"
      url: "/dashboards/20?Brand={{ value | url_encode }}"
      icon_url: "https://looker.com/favicon.ico"
    }

    link: {
      label: "Drill to Product Count Look"
      # url: "/looks/44??&f[products.brand]={{ value | url_encode }}"
      url: "/looks/44??&f[products.category]={{ _filters['products.category'] | url_encode }}"
      icon_url: "https://looker.com/favicon.ico"
    }

    link: {
      label: "Drill to Product Explore"
      url: "/explore/sso_demo/order_items?fields=products.brand,products.category,products.cost,products.department,products.distribution_center_id,products.product_count&limit=100"
      icon_url: "https://looker.com/favicon.ico"
    }

    drill_fields: [department,category]
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: distribution_center_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.distribution_center_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: product_count {
    type: count
    drill_fields: [id, name, distribution_centers.id, distribution_centers.name, inventory_items.count]
  }
}

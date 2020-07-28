
view: products {
  # sql_table_name: public.products ;;
  derived_table: {
    sql: select * from  public.products;;
  }

  filter: brand_filter {
    suggest_dimension: products.brand
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  parameter: param_test {
    type: unquoted
    allowed_value: {
      label: "Test"
      value: "${brand}"
    }
  }

  measure: test_measure {
    type: number
    sql: {% parameter param_test %}  ;;
  }

 filter: my_test_date {
   type: date
 }


  dimension: brand {
    label: "brand"
    # skip_drill_filter: yes
    tags: ["brand"]
    type: string
    sql: ${TABLE}.brand ;;



#     action: {
#       label: "Reach out to {{products.brand}} Brand Manager"
# #         url: "https://hooks.zapier.com/hooks/catch/5803443/ohvj9rp/"
#       url: "https://hooks.zapier.com/hooks/catch/5803443/o2khmds/"
# #       url: "https://brendanlooker.free.beeceptor.com"
# #       url: "https://hooks.zapier.com/hooks/catch/5803443/ohv7c33/"
# #       url: "https://hooks.zapier.com/hooks/catch/5803443/odyunat/"
#       icon_url: "https://www.looker.com/favicon.ico"


#       form_param: {
#         name: "Subject"
#         type: string
#         required:  yes
#         default: "Brand Analysis"
#       }

#       form_param: {
#         name: "Description"
#         type: textarea
#         required: yes
#         default:
#         "{{value}} looks like they were a good brand that have recently churned. Can we reach out to them and see if we can retain them?

#         Sent by: {{_user_attributes.email}}."
#       }

#       form_param: {
#         name: "Recipient"
#         type: select
#         default: "Brand Primary Contact"
#         option: {
#           name: "Brand Primary Contact"
#           label: "Brand Primary Contact"
#         }
#         option: {
#           name: "Internal Contact"
#           label: "Internal Contact"
#         }
#       }
#       form_param: {
#         name: "Send Me a Copy"
#         type: select
#         default: "yes"
#         option: {
#           name: "yes"
#           label: "Yes"
#         }
#         option: {
#           name: "no"
#           label: "No"
#         }
#       }

#       param: {
#         name: "Internal Contact"
#         value: "{{ products.bb_email._value }}"
#       }

#       param: {
#         name: "Primary Brand Contanct"
#         value: "{{ products.brand_contact_email._value }}"
#       }
#     }



    link: {
      label: "Google {{ value }}"
      url: "http://www.google.com/search?q={{ value | url_encode }}"
      icon_url: "http://google.com/favicon.ico"
    }
#

    link: {
      label: "Drill to Product Dashboard"
      url: "https://self-signed.looker.com:9999/dashboards/21?Brand={{ value }}"
      icon_url: "https://looker.com/favicon.ico"
    }

    # link: {
    #   label: "Drill to my new Product Dashboard"
    #   url: "/dashboards/28?Brand={{ value }}"
    #   icon_url: "https://looker.com/favicon.ico"
    # }

    # link: {
    #   label: "Drill to Product Dashboard2"
    #   url: "/dashboards/21?Brand={{ value }}&Category={{ _filters['products.category'] | url_encode }}"
    #   icon_url: "https://looker.com/favicon.ico"
    # }

    # link: {
    #   label: "Drill to Product Dashboard3"
    #   url: "/dashboards/21?Brand={{ value }}&Department={{ _filters['products.department'] | url_encode }}"
    #   icon_url: "https://looker.com/favicon.ico"
    # }

    # link: {
    #   label: "Drill to Product Look"
    #   url: "/looks/44??&f[products.brand]={{ value | url_encode }}" # Path to Look content
    #   icon_url: "https://looker.com/favicon.ico"
    # }

    # link: {
    #   label: "Drill to Product - No Filter"
    #   url: "/looks/44?" # Path to Look content
    #   icon_url: "https://looker.com/favicon.ico"
    # }

    # link: {
    #   label: "Drill to Product ScatterPlot Look"
    #   url: "/looks/44??&f[products.brand]={{ value | url_encode }}" # Path to Look content
    #   icon_url: "https://looker.com/favicon.ico"
    # }

    link: {
      label: "Drill to Product Explore"
      url: "/explore/sso_demo/order_items?fields=products.brand,products.category,products.cost,products.department,products.distribution_center_id,products.product_count&limit=100"
      icon_url: "https://looker.com/favicon.ico"
    }








    # html: <span style="font-weight: 500">{{rendered_value}}</span>;;
    # <span style="font-size: 18px">{{ rendered_value }}</span>;;


    drill_fields: [department,category, name, inventory_items.id]
  }


  parameter: dummy_filter {
#     hidden: yes
    allowed_value: {label: "Dashboard 1" value: "d1"}
    allowed_value: {label: "Dashboard 2" value: "d2"}
    allowed_value: {label: "Dashboard 2" value: "d3"}
  }
  measure: html_header {
    # hidden: yes
    type: max
    sql: 1 ;;
    html:
      <a type="button" target="_self" href="/dashboards/14?dummy_filter=d1&run=1"
        class="btn {% if link contains "d1" %} btn btn-success {% else %} btn-secondary {% endif %} btn-lg"> Dashboard 1</a>
      <a type="button" target="_self" href="/dashboards/15?dummy_filter=d2&run=1"
        class="btn {% if link contains "d2" %} btn btn-success {% else %} btn-secondary {% endif %} btn-lg"> Dashboard 2</a>
      <a type="button" target="_self" href="/dashboards/16?dummy_filter=d3&run=1"
        class="btn {% if link contains "d3" %} btn btn-success {% else %} btn-secondary {% endif %} btn-lg"> Dashboard 3</a>
    ;;
    drill_fields: [html_header]
  }

  dimension: dash_filter {
    sql: 1 ;;
    html:
    <a type="button" target="_self" href="/dashboards/21?Brand={{ value }}&Category={{ _filters['products.category'] | url_encode }}"class="btn btn-primary btn-lg btn-block"> VIEW STATS OVER TIME</a>  ;;
  }


  dimension: bb_email {
    type: string
    sql: 'brendan.buckley@looker.com' ;;
    tags: ["email"]
  }

  dimension: brand_contact_email {
    sql: 'brand.contact@brand.com' ;;
  }

  dimension: bb_symbol {
    type: string
    sql: '' ;;
    # html: <font color="#00B050">✌</font>;;
    # html: &#128315 ;; # Red down arrow
    html: &#x2705 ;; # Green Tick Box
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

  filter: department_filter {
    type: string
  }

  dimension: department {
    label: "department"
    type: string
#     sql: case when {% condition department_filter %}${TABLE}.department {% endcondition %} then ${TABLE}.department else NULL END;;
    sql: ${TABLE}.department;;
    drill_fields: [name]
#     html: {% if _filters['products.department_filter'] ==  %} {{value}} {% else %} All Departments {% endif %} ;;
  }

  dimension: department_dynamic_title {
    type: string
    sql: {% if department._in_query %} ${department} {% else %} 'All Departments' {% endif %};;
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

  measure: max {
    type: max
    sql: ${category} ;;
    # value_format_name: bb_format
  }

  measure: product_count {
    type: count
    # drill_fields: [id, name, distribution_centers.id, distribution_centers.name, inventory_items.count]
    drill_fields: [my_set*]
    # value_format_name: bb_format


  }
  # set: product_set {
  #   fields: [brand,department,category,name,retail_price]
  # }

  set: my_set {
    fields: [department,retail_price]
  }
  set: product_set {
    fields: [brand_contact_email, department, category,bb_email]
  }
}

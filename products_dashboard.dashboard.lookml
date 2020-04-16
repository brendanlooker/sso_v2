- dashboard: products_dashboard
  title: Products Dashboard
  layout: newspaper
  query_timezone: query_saved
  elements:
  - name: Average Days Since Last Order & Lifetime Revenue by Brand Top 10
    title: Average Days Since Last Order & Lifetime Revenue by Brand Top 10
    model: sso_demo
    explore: customer_behaviour_fact
    type: looker_line
    fields: [customer_behaviour_fact.average_days_since_last_order, customer_behaviour_fact.customer_lifetime_revenue,
      products.brand]
    filters:
      order_items.created_date: 6 months ago for 6 months
    sorts: [customer_behaviour_fact.average_days_since_last_order desc]
    limit: 10
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: customer_behaviour_fact.customer_lifetime_revenue,
            id: customer_behaviour_fact.customer_lifetime_revenue, name: Customer
              Lifetime Revenue}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: customer_behaviour_fact.average_days_since_last_order, id: customer_behaviour_fact.average_days_since_last_order,
            name: Average Days Since Last Order}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types:
      customer_behaviour_fact.customer_lifetime_revenue: area
    point_style: circle_outline
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: true
    interpolation: linear
    listen:
      Brand: products.brand
      Category: products.category
    row: 17
    col: 0
    width: 12
    height: 11
  - name: Sales Revenue & Items by Brand Top 10
    title: Sales Revenue & Items by Brand Top 10
    model: sso_demo
    explore: order_items
    type: looker_column
    fields: [order_items.total_sales, products.brand, order_items.total_gross_revenue,
      order_items.order_item_count]
    sorts: [order_items.total_sales desc]
    limit: 10
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
        reverse: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.total_sales,
            id: order_items.total_sales, name: Total Sales}, {axisId: order_items.total_gross_revenue,
            id: order_items.total_gross_revenue, name: Total Gross Revenue}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: !!null '', orientation: right, series: [{axisId: order_items.order_item_count,
            id: order_items.order_item_count, name: Order Item Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types:
      order_items.order_item_count: line
    point_style: circle_outline
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Brand: products.brand
      Category: products.category
    row: 17
    col: 12
    width: 12
    height: 11
  - name: Average Days Since Last Order & Lifetime Revenue by Month
    title: Average Days Since Last Order & Lifetime Revenue by Month
    model: sso_demo
    explore: customer_behaviour_fact
    type: looker_line
    fields: [customer_behaviour_fact.average_days_since_last_order, customer_behaviour_fact.customer_lifetime_revenue,
      order_items.created_month]
    fill_fields: [order_items.created_month]
    filters:
      order_items.created_date: 6 months ago for 6 months
    sorts: [order_items.created_month desc]
    limit: 500
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: customer_behaviour_fact.customer_lifetime_revenue,
            id: customer_behaviour_fact.customer_lifetime_revenue, name: Customer
              Lifetime Revenue}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: customer_behaviour_fact.average_days_since_last_order, id: customer_behaviour_fact.average_days_since_last_order,
            name: Average Days Since Last Order}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types:
      customer_behaviour_fact.customer_lifetime_revenue: column
      customer_behaviour_fact.average_days_since_last_order: area
    point_style: circle_outline
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: true
    interpolation: linear
    listen:
      Brand: products.brand
      Category: products.category
    row: 4
    col: 0
    width: 12
    height: 13
  - title: Product Count
    name: Product Count
    model: sso_demo
    explore: order_items
    type: single_value
    fields: [products.product_count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    single_value_title: All Products
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    note_state: collapsed
    note_display: above
    note_text: ''
    listen:
      Brand: products.brand
      Category: products.category
    row: 42
    col: 14
    width: 4
    height: 4
  - name: Total Sales by Top 10 Brands
    title: Total Sales by Top 10 Brands
    model: sso_demo
    explore: customer_behaviour_fact
    type: looker_pie
    fields: [products.brand, order_items.total_sales]
    sorts: [order_items.total_sales desc]
    limit: 10
    column_limit: 50
    total: true
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_types: {}
    row: 4
    col: 12
    width: 12
    height: 13
  - name: Sample
    type: text
    title_text: Sample
    body_text: |-
      <font color="#D3D3D3" size="10"><center>Grey Size 10</center></font>
      <font color="red" size="6"><center>Red Size 6</center></font>
      <p>Regular</p>
      <b><center>Bold</center></b>
    row: 42
    col: 18
    width: 4
    height: 4
  - name: Total Gross Revenue Month over Month
    title: Total Gross Revenue Month over Month
    model: sso_demo
    explore: customer_behaviour_fact
    type: looker_line
    fields: [order_items.total_gross_revenue, order_items.created_month]
    fill_fields: [order_items.created_month]
    filters:
      order_items.created_date: 12 months ago for 12 months
    sorts: [order_items.created_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: diff_2, label: "%Diff", expression: "(${order_items.total_gross_revenue}-(offset(${order_items.total_gross_revenue},1)))/(offset(${order_items.total_gross_revenue},1))\n",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types:
      diff_2: area
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 1
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_fields: [order_items.total_gross_revenue]
    row: 28
    col: 0
    width: 24
    height: 7
  - name: Total Sales Quarter-over-Quarter
    title: Total Sales Quarter-over-Quarter
    model: sso_demo
    explore: order_items
    type: single_value
    fields: [order_items.period_over_period_total_sales, order_items.created_quarter]
    filters:
      products.brand: ''
      products.category: ''
      order_items.period_over_period: QoQ-Q
      order_items.period_over_period_total_sales: NOT NULL
    sorts: [order_items.created_quarter desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: diff, label: "%Diff", expression: "(${order_items.period_over_period_total_sales}-offset(${order_items.period_over_period_total_sales},1))/offset(${order_items.period_over_period_total_sales},1)",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    single_value_title: Total Sales Quarter to Date
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: v's Last Quarter to Date
    enable_conditional_formatting: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    row: 0
    col: 20
    width: 4
    height: 4
  - name: Total Sales Year-over-Year
    title: Total Sales Year-over-Year
    model: sso_demo
    explore: order_items
    type: single_value
    fields: [order_items.period_over_period_total_sales, order_items.created_year]
    filters:
      products.brand: ''
      products.category: ''
      order_items.period_over_period: YoY
      order_items.period_over_period_total_sales: NOT NULL
    sorts: [order_items.created_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: diff, label: "%Diff", expression: "(${order_items.period_over_period_total_sales}-offset(${order_items.period_over_period_total_sales},1))/offset(${order_items.period_over_period_total_sales},1)",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    single_value_title: Total Sales Year to Date
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: v's Last Year to Date
    enable_conditional_formatting: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    row: 0
    col: 15
    width: 5
    height: 4
  - name: Total Sales Month-over-Month
    title: Total Sales Month-over-Month
    model: sso_demo
    explore: order_items
    type: single_value
    fields: [order_items.created_month, order_items.period_over_period_total_sales]
    filters:
      products.brand: ''
      products.category: ''
      order_items.period_over_period: MoM-M
      order_items.period_over_period_total_sales: NOT NULL
    sorts: [order_items.created_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: diff, label: "%Diff", expression: "(${order_items.period_over_period_total_sales}-offset(${order_items.period_over_period_total_sales},1))/offset(${order_items.period_over_period_total_sales},1)",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    single_value_title: Total Sales to Month
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: v's Last Month
    enable_conditional_formatting: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    row: 0
    col: 0
    width: 4
    height: 4
  - name: Total Sales Last Quarter
    title: Total Sales Last Quarter
    model: sso_demo
    explore: order_items
    type: single_value
    fields: [order_items.created_quarter, order_items.total_sales]
    fill_fields: [order_items.created_quarter]
    filters:
      order_items.created_year: 2 quarters ago for 2 quarters
    sorts: [order_items.created_quarter desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: previous_quarter, label: Previous Quarter,
        expression: "${order_items.total_sales}/offset(${order_items.total_sales},1)",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    single_value_title: Total Sales Last Quarter
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    row: 0
    col: 4
    width: 4
    height: 4
  - name: Total Sales Year-over-Year Line
    title: Total Sales Year-over-Year Line
    model: sso_demo
    explore: order_items
    type: looker_line
    fields: [order_items.period_over_period_total_sales, order_items.created_month_name,
      order_items.created_year]
    pivots: [order_items.created_year]
    filters:
      products.brand: ''
      products.category: ''
      order_items.period_over_period: YoY
      order_items.period_over_period_total_sales: NOT NULL
      order_items.created_year: 3 years
    sorts: [order_items.created_year 0, order_items.created_month_name]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle_outline
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    single_value_title: Total Sales Quarter to Date
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: v's Last Quarter to Date
    enable_conditional_formatting: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    row: 35
    col: 0
    width: 24
    height: 7
  - name: ''
    type: text
    title_text: ''
    body_text: "<div class=\"alert alert-info vis\">\n   <div class=\"card-header\"\
      >\n      <br> <font color=\"#282828\" size=\"8\">\n   <font color=\"#eb9e03\"\
      \ size=\"8\"><center>Product Dashboard</center></font>\n      <div class=\"\
      btn-group btn-group-toggle text-center\" data-toggle=\"buttons\">\n      \t\
      <a href=\"https://meta.looker.com/dashboards/2259\" class=\"btn btn-primary\
      \ text-strong\">Brand Dashboard</a>  <a href=\"https://meta.looker.com/dashboards/5132\"\
      \ class=\"btn btn-secondary\">Department Dashboard</a>\n      \t<a href=\"https://meta.looker.com/dashboards/1555\"\
      \ class=\"btn btn-secondary\">Category Dashboard</a>\n      </div>\n   </div>\n\
      </div>"
    row: 0
    col: 8
    width: 7
    height: 4
  filters:
  - name: Brand
    title: Brand
    type: field_filter
    default_value: '"Levi''s",Dockers,Carhartt'
    allow_multiple_values: true
    required: false
    model: sso_demo
    explore: customer_behaviour_fact
    listens_to_filters: []
    field: products.brand
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: sso_demo
    explore: order_items
    listens_to_filters: []
    field: products.category

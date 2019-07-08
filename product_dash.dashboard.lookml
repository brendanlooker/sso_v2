- dashboard: products_dashboard
  title: Products Dashboard LookML
  layout: newspaper
  elements:
  - name: Average Days Since Last Order & Lifetime Revenue by Brand Top 10
    title: Average Days Since Last Order & Lifetime Revenue by Brand Top 10
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
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: customer_behaviour_fact.customer_lifetime_revenue,
            id: customer_behaviour_fact.customer_lifetime_revenue, name: Customer
              Lifetime Revenue}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: !!null '', orientation: left,
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
    point_style: none
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
    row: 0
    col: 16
    width: 8
    height: 14
  - name: Sales Revenue & Items by Brand Top 10
    title: Sales Revenue & Items by Brand Top 10
    explore: order_items
    type: looker_column
    fields: [order_items.total_sales, products.brand, order_items.total_gross_revenue,
      order_items.order_item_count]
    sorts: [order_items.total_sales desc]
    limit: 10
    query_timezone: America/Los_Angeles
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
    point_style: none
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
    row: 3
    col: 8
    width: 8
    height: 11
  - name: Average Days Since Last Order & Lifetime Revenue by Month
    title: Average Days Since Last Order & Lifetime Revenue by Month
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
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: customer_behaviour_fact.customer_lifetime_revenue,
            id: customer_behaviour_fact.customer_lifetime_revenue, name: Customer
              Lifetime Revenue}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: !!null '', orientation: left,
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
    point_style: none
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
    row: 0
    col: 0
    width: 8
    height: 14
  - name: Product Count
    title: Product Count
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
    listen:
      Brand: products.brand
      Category: products.category
    row: 0
    col: 8
    width: 8
    height: 3
  filters:
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    explore: customer_behaviour_fact
    listens_to_filters: []
    field: products.brand
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    explore: order_items
    listens_to_filters: []
    field: products.category

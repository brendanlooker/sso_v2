view: test {
  derived_table: {
    explore_source: order_items {
      column: total_gross_margin {}
      column: category { field: products.category }
      column: department { field: products.department }
    }
  }
  dimension: total_gross_margin {
    label: "Orders Total Gross Margin"
    description: "Total Gross Margin - Total Gross Revenue minus Total Cost"
    value_format: "$#,##0"
    type: number
  }
  dimension: category {}
  dimension: department {
    label: "Products department"
  }
}

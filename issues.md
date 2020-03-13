---
title: Issues - 59⛔ 201⚠️  
navigation: true
---

<p style="text-align:right;color:#cccs">
<<<<<<< HEAD
Generated Tue, 03 Mar 2020 21:23:39 GMT
</p>

<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:200%;">Issues (59⛔201⚠️)</summary>

<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f1">F1</a>. No inter-view dependencies (17⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>view:customer_behaviour&#47;field:customer_lifetime_orders </td>
<td>customer_lifetime_orders references another view, order_items,  via ${order_items.order_id}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:customer_behaviour&#47;field:customer_lifetime_revenue </td>
<td>customer_lifetime_revenue references another view, order_items,  via ${order_items.total_gross_revenue}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;field:total_cost </td>
<td>total_cost references another view, if currency_selector,  via {% if currency_selector._parameter_value == 'usd' %}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;field:total_gross_margin </td>
<td>total_gross_margin references another view, inventory_items,  via ${inventory_items.total_cost}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;field:item_return_rate </td>
<td>item_return_rate references another view, inventory_items,  via ${inventory_items.total_items_sold}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;field:item_return_rate </td>
<td>item_return_rate references another view, number_of_items_returned,  via {{ number_of_items_returned._rendered_value }</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;field:period_over_period_total_sales </td>
<td>period_over_period_total_sales references another view, if period_over_period,  via {% if period_over_period._parameter_value == "'YoY'" %}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;field:brand </td>
<td>brand references another view, _filters['products,  via {{ _filters['products.category'] | url_encode }</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;field:brand </td>
<td>brand references another view, _filters['products,  via {{ _filters['products.category'] | url_encode }</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;field:bb_email </td>
<td>bb_email references another view, 'brendan,  via  'brendan.buckley@looker.com' </td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;field:brand_contact_email </td>
<td>brand_contact_email references another view, 'brand,  via  'brand.contact@brand.com' </td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;field:department_dynamic_title </td>
<td>department_dynamic_title references another view, if department,  via {% if department._in_query %}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users_test&#47;field:period_over_period_user_count </td>
<td>period_over_period_user_count references another view, if period_over_period,  via {% if period_over_period._parameter_value == "'YoY'" %}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users_test&#47;field:period_over_period_filter </td>
<td>undefined references another view, if period_over_period,  via {% if period_over_period._parameter_value == "'YoY'" %}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;field:period_over_period_user_count </td>
<td>period_over_period_user_count references another view, if period_over_period,  via {% if period_over_period._parameter_value == "'YoY'" %}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;field:users_who_have_returned_items </td>
<td>users_who_have_returned_items references another view, products,  via {{ products.department }</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;field:period_over_period_filter </td>
<td>undefined references another view, if period_over_period,  via {% if period_over_period._parameter_value == "'YoY'" %}</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f3">F3</a>. Count fields filtered (15⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>view:customer_behaviour_fact&#47;field:count_users </td>
<td>Type:count measure at view:customer_behaviour_fact/field:count_users does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:distribution_centers&#47;field:count </td>
<td>Type:count measure at view:distribution_centers/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;field:count </td>
<td>Type:count measure at view:events/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;field:inventory_item_count </td>
<td>Type:count measure at view:inventory_items/field:inventory_item_count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;field:order_item_count </td>
<td>Type:count measure at view:order_items/field:order_item_count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;field:product_count </td>
<td>Type:count measure at view:products/field:product_count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:ranking_google_analytics&#47;field:count </td>
<td>Type:count measure at view:ranking_google_analytics/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:ranking_v2&#47;field:count </td>
<td>Type:count measure at view:ranking_v2/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:sleepcycle_demo&#47;field:count </td>
<td>Type:count measure at view:sleepcycle_demo/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users_fact&#47;field:count </td>
<td>Type:count measure at view:users_fact/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users_facts_bkw&#47;field:count </td>
<td>Type:count measure at view:users_facts_bkw/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users_insights&#47;field:count </td>
<td>Type:count measure at view:users_insights/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users_test_1&#47;field:count </td>
<td>Type:count measure at view:users_test_1/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users_test&#47;field:user_count </td>
<td>Type:count measure at view:users_test/field:user_count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;field:user_count </td>
<td>Type:count measure at view:users/field:user_count does not have a filter applied</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f4">F4</a>. Description or hidden (201⚠️)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⚠️</td>
<td>view:bkw_ndt&#47;field:sale_price </td>
<td>view:bkw_ndt/field:sale_price is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:bkw_ndt&#47;field:brand </td>
<td>view:bkw_ndt/field:brand is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:id </td>
<td>view:customer_behaviour_fact/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:user_id </td>
<td>view:customer_behaviour_fact/field:user_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:days_since_last_order </td>
<td>view:customer_behaviour_fact/field:days_since_last_order is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:is_active </td>
<td>view:customer_behaviour_fact/field:is_active is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:is_repeat_customer </td>
<td>view:customer_behaviour_fact/field:is_repeat_customer is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:customer_lifetime_orders_grp </td>
<td>view:customer_behaviour_fact/field:customer_lifetime_orders_grp is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:customer_lifetime_revenue_grp </td>
<td>view:customer_behaviour_fact/field:customer_lifetime_revenue_grp is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:count_users </td>
<td>view:customer_behaviour_fact/field:count_users is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:customer_lifetime_orders </td>
<td>view:customer_behaviour_fact/field:customer_lifetime_orders is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:customer_lifetime_revenue </td>
<td>view:customer_behaviour_fact/field:customer_lifetime_revenue is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:average_number_of_orders </td>
<td>view:customer_behaviour_fact/field:average_number_of_orders is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:average_lifetime_revenue </td>
<td>view:customer_behaviour_fact/field:average_lifetime_revenue is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:average_days_since_last_order </td>
<td>view:customer_behaviour_fact/field:average_days_since_last_order is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour&#47;field:id </td>
<td>view:customer_behaviour/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:distribution_centers&#47;field:id </td>
<td>view:distribution_centers/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:distribution_centers&#47;field:latitude </td>
<td>view:distribution_centers/field:latitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:distribution_centers&#47;field:longitude </td>
<td>view:distribution_centers/field:longitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:distribution_centers&#47;field:name </td>
<td>view:distribution_centers/field:name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:distribution_centers&#47;field:count </td>
<td>view:distribution_centers/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:id </td>
<td>view:events/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:browser </td>
<td>view:events/field:browser is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:city </td>
<td>view:events/field:city is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:country </td>
<td>view:events/field:country is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:event_type </td>
<td>view:events/field:event_type is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:ip_address </td>
<td>view:events/field:ip_address is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:latitude </td>
<td>view:events/field:latitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:longitude </td>
<td>view:events/field:longitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:os </td>
<td>view:events/field:os is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:sequence_number </td>
<td>view:events/field:sequence_number is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:session_id </td>
<td>view:events/field:session_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:state </td>
<td>view:events/field:state is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:traffic_source </td>
<td>view:events/field:traffic_source is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:uri </td>
<td>view:events/field:uri is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:user_id </td>
<td>view:events/field:user_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:zip </td>
<td>view:events/field:zip is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:count </td>
<td>view:events/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:id </td>
<td>view:inventory_items/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:cost </td>
<td>view:inventory_items/field:cost is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_brand </td>
<td>view:inventory_items/field:product_brand is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_category </td>
<td>view:inventory_items/field:product_category is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_department </td>
<td>view:inventory_items/field:product_department is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_distribution_center_id </td>
<td>view:inventory_items/field:product_distribution_center_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_id </td>
<td>view:inventory_items/field:product_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_name </td>
<td>view:inventory_items/field:product_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_retail_price </td>
<td>view:inventory_items/field:product_retail_price is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_sku </td>
<td>view:inventory_items/field:product_sku is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:inventory_item_count </td>
<td>view:inventory_items/field:inventory_item_count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:currency_selector </td>
<td>view:inventory_items/field:currency_selector is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items_fact&#47;field:order_sequence </td>
<td>view:order_items_fact/field:order_sequence is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items_fact&#47;field:is_first_purchase </td>
<td>view:order_items_fact/field:is_first_purchase is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items_fact&#47;field:has_subsequent_order </td>
<td>view:order_items_fact/field:has_subsequent_order is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items_fact&#47;field:repeat_purchase_within_60_days </td>
<td>view:order_items_fact/field:repeat_purchase_within_60_days is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items_fact&#47;field:days_to_previous_order </td>
<td>view:order_items_fact/field:days_to_previous_order is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items_fact&#47;field:average_number_of_days_between_orders </td>
<td>view:order_items_fact/field:average_number_of_days_between_orders is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:id </td>
<td>view:order_items/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:days_in_filter </td>
<td>view:order_items/field:days_in_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:created_dynamic </td>
<td>view:order_items/field:created_dynamic is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:inventory_item_id </td>
<td>view:order_items/field:inventory_item_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:order_id </td>
<td>view:order_items/field:order_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:sale_price </td>
<td>view:order_items/field:sale_price is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:status </td>
<td>view:order_items/field:status is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:user_id </td>
<td>view:order_items/field:user_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:order_item_count </td>
<td>view:order_items/field:order_item_count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:id </td>
<td>view:products/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:brand </td>
<td>view:products/field:brand is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:bb_email </td>
<td>view:products/field:bb_email is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:brand_contact_email </td>
<td>view:products/field:brand_contact_email is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:bb_symbol </td>
<td>view:products/field:bb_symbol is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:category </td>
<td>view:products/field:category is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:cost </td>
<td>view:products/field:cost is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:department </td>
<td>view:products/field:department is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:department_dynamic_title </td>
<td>view:products/field:department_dynamic_title is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:distribution_center_id </td>
<td>view:products/field:distribution_center_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:name </td>
<td>view:products/field:name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:retail_price </td>
<td>view:products/field:retail_price is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:sku </td>
<td>view:products/field:sku is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:max </td>
<td>view:products/field:max is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:product_count </td>
<td>view:products/field:product_count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:department_filter </td>
<td>view:products/field:department_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:country_group </td>
<td>view:ranking_google_analytics/field:country_group is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:country_group_rank </td>
<td>view:ranking_google_analytics/field:country_group_rank is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:country </td>
<td>view:ranking_google_analytics/field:country is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:country_rank </td>
<td>view:ranking_google_analytics/field:country_rank is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:city </td>
<td>view:ranking_google_analytics/field:city is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:city_rank </td>
<td>view:ranking_google_analytics/field:city_rank is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:total_sessions </td>
<td>view:ranking_google_analytics/field:total_sessions is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:rank_date_filter </td>
<td>view:ranking_google_analytics/field:rank_date_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:country_grouping </td>
<td>view:ranking_google_analytics/field:country_grouping is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:country_group </td>
<td>view:ranking_v2/field:country_group is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:country_group_rank </td>
<td>view:ranking_v2/field:country_group_rank is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:country </td>
<td>view:ranking_v2/field:country is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:country_rank </td>
<td>view:ranking_v2/field:country_rank is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:city </td>
<td>view:ranking_v2/field:city is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:city_rank </td>
<td>view:ranking_v2/field:city_rank is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:total_gross_sales_after_discount </td>
<td>view:ranking_v2/field:total_gross_sales_after_discount is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:total_orders </td>
<td>view:ranking_v2/field:total_orders is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:rank_date_filter </td>
<td>view:ranking_v2/field:rank_date_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:country_grouping </td>
<td>view:ranking_v2/field:country_grouping is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:sleepcycle_demo&#47;field:id </td>
<td>view:sleepcycle_demo/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:sleepcycle_demo&#47;field:user_id </td>
<td>view:sleepcycle_demo/field:user_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:sleepcycle_demo&#47;field:seq_num </td>
<td>view:sleepcycle_demo/field:seq_num is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:sleepcycle_demo&#47;field:running_total </td>
<td>view:sleepcycle_demo/field:running_total is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:sleepcycle_demo&#47;field:count </td>
<td>view:sleepcycle_demo/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:sleepcycle_demo&#47;field:total_revenue </td>
<td>view:sleepcycle_demo/field:total_revenue is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_extd&#47;field:id </td>
<td>view:users_extd/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_extd&#47;field:is_60_day_repeat_purchase_user </td>
<td>view:users_extd/field:is_60_day_repeat_purchase_user is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_fact&#47;field:id </td>
<td>view:users_fact/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_fact&#47;field:state </td>
<td>view:users_fact/field:state is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_fact&#47;field:total_order </td>
<td>view:users_fact/field:total_order is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_fact&#47;field:total_sales </td>
<td>view:users_fact/field:total_sales is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_fact&#47;field:ranking </td>
<td>view:users_fact/field:ranking is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_fact&#47;field:count </td>
<td>view:users_fact/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_fact&#47;field:state_filter </td>
<td>view:users_fact/field:state_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_facts_bkw&#47;field:id </td>
<td>view:users_facts_bkw/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_facts_bkw&#47;field:user_id </td>
<td>view:users_facts_bkw/field:user_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_facts_bkw&#47;field:total_revenue </td>
<td>view:users_facts_bkw/field:total_revenue is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_facts_bkw&#47;field:seq_num </td>
<td>view:users_facts_bkw/field:seq_num is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_facts_bkw&#47;field:running_total </td>
<td>view:users_facts_bkw/field:running_total is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_facts_bkw&#47;field:count </td>
<td>view:users_facts_bkw/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_facts_bkw&#47;field:avg_revenue </td>
<td>view:users_facts_bkw/field:avg_revenue is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_insights&#47;field:id </td>
<td>view:users_insights/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_insights&#47;field:user_id </td>
<td>view:users_insights/field:user_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_insights&#47;field:total_revenue </td>
<td>view:users_insights/field:total_revenue is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_insights&#47;field:seq_num </td>
<td>view:users_insights/field:seq_num is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_insights&#47;field:running_total </td>
<td>view:users_insights/field:running_total is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_insights&#47;field:count </td>
<td>view:users_insights/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test_1&#47;field:users_test_email </td>
<td>view:users_test_1/field:users_test_email is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test_1&#47;field:users_test_first_name </td>
<td>view:users_test_1/field:users_test_first_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test_1&#47;field:users_test_last_name </td>
<td>view:users_test_1/field:users_test_last_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test_1&#47;field:users_test_state </td>
<td>view:users_test_1/field:users_test_state is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test_1&#47;field:users_test_is_new_user </td>
<td>view:users_test_1/field:users_test_is_new_user is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test_1&#47;field:count </td>
<td>view:users_test_1/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:id </td>
<td>view:users_test/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:age </td>
<td>view:users_test/field:age is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:age_tier </td>
<td>view:users_test/field:age_tier is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:city </td>
<td>view:users_test/field:city is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:country </td>
<td>view:users_test/field:country is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:country_map </td>
<td>view:users_test/field:country_map is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:year </td>
<td>view:users_test/field:year is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:month </td>
<td>view:users_test/field:month is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:east_coast_city_choice </td>
<td>view:users_test/field:east_coast_city_choice is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:days_since_signup_tiers </td>
<td>view:users_test/field:days_since_signup_tiers is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:months_since_signup_tiers </td>
<td>view:users_test/field:months_since_signup_tiers is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:email </td>
<td>view:users_test/field:email is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:first_name </td>
<td>view:users_test/field:first_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:gender </td>
<td>view:users_test/field:gender is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:last_name </td>
<td>view:users_test/field:last_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:latitude </td>
<td>view:users_test/field:latitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:longitude </td>
<td>view:users_test/field:longitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:state </td>
<td>view:users_test/field:state is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:state_map </td>
<td>view:users_test/field:state_map is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:user_location </td>
<td>view:users_test/field:user_location is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:traffic_source </td>
<td>view:users_test/field:traffic_source is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:zip </td>
<td>view:users_test/field:zip is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:is_new_user </td>
<td>view:users_test/field:is_new_user is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:period_over_period_user_count </td>
<td>view:users_test/field:period_over_period_user_count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:average_days_since_signup </td>
<td>view:users_test/field:average_days_since_signup is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:average_months_since_signip </td>
<td>view:users_test/field:average_months_since_signip is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:user_count </td>
<td>view:users_test/field:user_count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:state_filter </td>
<td>view:users_test/field:state_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:test </td>
<td>view:users_test/field:test is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:users_cities_filter </td>
<td>view:users_test/field:users_cities_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:state_parameter </td>
<td>view:users_test/field:state_parameter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:city_parameter </td>
<td>view:users_test/field:city_parameter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:id </td>
<td>view:users/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:age </td>
<td>view:users/field:age is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:arrow_right_down </td>
<td>view:users/field:arrow_right_down is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:arrow_down_left </td>
<td>view:users/field:arrow_down_left is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:age_tier </td>
<td>view:users/field:age_tier is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:city </td>
<td>view:users/field:city is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:country </td>
<td>view:users/field:country is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:country_map </td>
<td>view:users/field:country_map is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:year </td>
<td>view:users/field:year is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:east_coast_city_choice </td>
<td>view:users/field:east_coast_city_choice is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:days_since_signup </td>
<td>view:users/field:days_since_signup is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:days_since_signup_tiers </td>
<td>view:users/field:days_since_signup_tiers is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:months_since_signup_tiers </td>
<td>view:users/field:months_since_signup_tiers is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:email </td>
<td>view:users/field:email is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:first_name </td>
<td>view:users/field:first_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:gender </td>
<td>view:users/field:gender is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:last_name </td>
<td>view:users/field:last_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:latitude </td>
<td>view:users/field:latitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:longitude </td>
<td>view:users/field:longitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:state </td>
<td>view:users/field:state is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:state_map </td>
<td>view:users/field:state_map is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:user_location </td>
<td>view:users/field:user_location is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:traffic_source </td>
<td>view:users/field:traffic_source is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:zip </td>
<td>view:users/field:zip is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:is_new_user </td>
<td>view:users/field:is_new_user is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:period_over_period_user_count </td>
<td>view:users/field:period_over_period_user_count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:average_days_since_signup </td>
<td>view:users/field:average_days_since_signup is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:average_months_since_signip </td>
<td>view:users/field:average_months_since_signip is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:my_constant </td>
<td>view:users/field:my_constant is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:user_count </td>
<td>view:users/field:user_count is missing a description</td>
=======
Generated Fri, 13 Mar 2020 14:50:12 GMT
</p>

<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:200%;">Issues (59⛔201⚠️)</summary>

<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f1">F1</a>. No inter-view dependencies (17⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>view:customer_behaviour&#47;field:customer_lifetime_orders </td>
<td>customer_lifetime_orders references another view, order_items,  via ${order_items.order_id}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:customer_behaviour&#47;field:customer_lifetime_revenue </td>
<td>customer_lifetime_revenue references another view, order_items,  via ${order_items.total_gross_revenue}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;field:total_cost </td>
<td>total_cost references another view, if currency_selector,  via {% if currency_selector._parameter_value == 'usd' %}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;field:total_gross_margin </td>
<td>total_gross_margin references another view, inventory_items,  via ${inventory_items.total_cost}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;field:item_return_rate </td>
<td>item_return_rate references another view, inventory_items,  via ${inventory_items.total_items_sold}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;field:item_return_rate </td>
<td>item_return_rate references another view, number_of_items_returned,  via {{ number_of_items_returned._rendered_value }</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;field:period_over_period_total_sales </td>
<td>period_over_period_total_sales references another view, if period_over_period,  via {% if period_over_period._parameter_value == "'YoY'" %}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;field:brand </td>
<td>brand references another view, _filters['products,  via {{ _filters['products.category'] | url_encode }</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;field:brand </td>
<td>brand references another view, _filters['products,  via {{ _filters['products.category'] | url_encode }</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;field:bb_email </td>
<td>bb_email references another view, 'brendan,  via  'brendan.buckley@looker.com' </td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;field:brand_contact_email </td>
<td>brand_contact_email references another view, 'brand,  via  'brand.contact@brand.com' </td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;field:department_dynamic_title </td>
<td>department_dynamic_title references another view, if department,  via {% if department._in_query %}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users_test&#47;field:period_over_period_user_count </td>
<td>period_over_period_user_count references another view, if period_over_period,  via {% if period_over_period._parameter_value == "'YoY'" %}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users_test&#47;field:period_over_period_filter </td>
<td>undefined references another view, if period_over_period,  via {% if period_over_period._parameter_value == "'YoY'" %}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;field:period_over_period_user_count </td>
<td>period_over_period_user_count references another view, if period_over_period,  via {% if period_over_period._parameter_value == "'YoY'" %}</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;field:users_who_have_returned_items </td>
<td>users_who_have_returned_items references another view, products,  via {{ products.department }</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;field:period_over_period_filter </td>
<td>undefined references another view, if period_over_period,  via {% if period_over_period._parameter_value == "'YoY'" %}</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f2">F2</a>. No view-labeled fields (1⚠️)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:id </td>
<td>view:inventory_items/field:id contains a field-level view_label "Products"</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f3">F3</a>. Count fields filtered (15⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>view:customer_behaviour_fact&#47;field:count_users </td>
<td>Type:count measure at view:customer_behaviour_fact/field:count_users does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:distribution_centers&#47;field:count </td>
<td>Type:count measure at view:distribution_centers/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:events&#47;field:count </td>
<td>Type:count measure at view:events/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:inventory_items&#47;field:inventory_item_count </td>
<td>Type:count measure at view:inventory_items/field:inventory_item_count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:order_items&#47;field:order_item_count </td>
<td>Type:count measure at view:order_items/field:order_item_count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:products&#47;field:product_count </td>
<td>Type:count measure at view:products/field:product_count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:ranking_google_analytics&#47;field:count </td>
<td>Type:count measure at view:ranking_google_analytics/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:ranking_v2&#47;field:count </td>
<td>Type:count measure at view:ranking_v2/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:sleepcycle_demo&#47;field:count </td>
<td>Type:count measure at view:sleepcycle_demo/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users_fact&#47;field:count </td>
<td>Type:count measure at view:users_fact/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users_facts_bkw&#47;field:count </td>
<td>Type:count measure at view:users_facts_bkw/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users_insights&#47;field:count </td>
<td>Type:count measure at view:users_insights/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users_test_1&#47;field:count </td>
<td>Type:count measure at view:users_test_1/field:count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users_test&#47;field:user_count </td>
<td>Type:count measure at view:users_test/field:user_count does not have a filter applied</td>
</tr>
<tr>
<td>⛔</td>
<td>view:users&#47;field:user_count </td>
<td>Type:count measure at view:users/field:user_count does not have a filter applied</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f4">F4</a>. Description or hidden (200⚠️)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⚠️</td>
<td>view:bkw_ndt&#47;field:sale_price </td>
<td>view:bkw_ndt/field:sale_price is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:bkw_ndt&#47;field:brand </td>
<td>view:bkw_ndt/field:brand is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:id </td>
<td>view:customer_behaviour_fact/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:user_id </td>
<td>view:customer_behaviour_fact/field:user_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:days_since_last_order </td>
<td>view:customer_behaviour_fact/field:days_since_last_order is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:is_active </td>
<td>view:customer_behaviour_fact/field:is_active is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:is_repeat_customer </td>
<td>view:customer_behaviour_fact/field:is_repeat_customer is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:customer_lifetime_orders_grp </td>
<td>view:customer_behaviour_fact/field:customer_lifetime_orders_grp is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:customer_lifetime_revenue_grp </td>
<td>view:customer_behaviour_fact/field:customer_lifetime_revenue_grp is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:count_users </td>
<td>view:customer_behaviour_fact/field:count_users is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:customer_lifetime_orders </td>
<td>view:customer_behaviour_fact/field:customer_lifetime_orders is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:customer_lifetime_revenue </td>
<td>view:customer_behaviour_fact/field:customer_lifetime_revenue is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:average_number_of_orders </td>
<td>view:customer_behaviour_fact/field:average_number_of_orders is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:average_lifetime_revenue </td>
<td>view:customer_behaviour_fact/field:average_lifetime_revenue is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour_fact&#47;field:average_days_since_last_order </td>
<td>view:customer_behaviour_fact/field:average_days_since_last_order is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:customer_behaviour&#47;field:id </td>
<td>view:customer_behaviour/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:distribution_centers&#47;field:id </td>
<td>view:distribution_centers/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:distribution_centers&#47;field:latitude </td>
<td>view:distribution_centers/field:latitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:distribution_centers&#47;field:longitude </td>
<td>view:distribution_centers/field:longitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:distribution_centers&#47;field:name </td>
<td>view:distribution_centers/field:name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:distribution_centers&#47;field:count </td>
<td>view:distribution_centers/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:id </td>
<td>view:events/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:browser </td>
<td>view:events/field:browser is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:city </td>
<td>view:events/field:city is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:country </td>
<td>view:events/field:country is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:event_type </td>
<td>view:events/field:event_type is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:ip_address </td>
<td>view:events/field:ip_address is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:latitude </td>
<td>view:events/field:latitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:longitude </td>
<td>view:events/field:longitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:os </td>
<td>view:events/field:os is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:sequence_number </td>
<td>view:events/field:sequence_number is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:session_id </td>
<td>view:events/field:session_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:state </td>
<td>view:events/field:state is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:traffic_source </td>
<td>view:events/field:traffic_source is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:uri </td>
<td>view:events/field:uri is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:user_id </td>
<td>view:events/field:user_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:zip </td>
<td>view:events/field:zip is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:events&#47;field:count </td>
<td>view:events/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:id </td>
<td>view:inventory_items/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:cost </td>
<td>view:inventory_items/field:cost is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_brand </td>
<td>view:inventory_items/field:product_brand is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_category </td>
<td>view:inventory_items/field:product_category is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_department </td>
<td>view:inventory_items/field:product_department is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_distribution_center_id </td>
<td>view:inventory_items/field:product_distribution_center_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_id </td>
<td>view:inventory_items/field:product_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_name </td>
<td>view:inventory_items/field:product_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_retail_price </td>
<td>view:inventory_items/field:product_retail_price is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_sku </td>
<td>view:inventory_items/field:product_sku is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:inventory_item_count </td>
<td>view:inventory_items/field:inventory_item_count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:currency_selector </td>
<td>view:inventory_items/field:currency_selector is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items_fact&#47;field:order_sequence </td>
<td>view:order_items_fact/field:order_sequence is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items_fact&#47;field:is_first_purchase </td>
<td>view:order_items_fact/field:is_first_purchase is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items_fact&#47;field:has_subsequent_order </td>
<td>view:order_items_fact/field:has_subsequent_order is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items_fact&#47;field:repeat_purchase_within_60_days </td>
<td>view:order_items_fact/field:repeat_purchase_within_60_days is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items_fact&#47;field:days_to_previous_order </td>
<td>view:order_items_fact/field:days_to_previous_order is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items_fact&#47;field:average_number_of_days_between_orders </td>
<td>view:order_items_fact/field:average_number_of_days_between_orders is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:id </td>
<td>view:order_items/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:days_in_filter </td>
<td>view:order_items/field:days_in_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:created_dynamic </td>
<td>view:order_items/field:created_dynamic is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:inventory_item_id </td>
<td>view:order_items/field:inventory_item_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:order_id </td>
<td>view:order_items/field:order_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:sale_price </td>
<td>view:order_items/field:sale_price is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:status </td>
<td>view:order_items/field:status is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:user_id </td>
<td>view:order_items/field:user_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:order_item_count </td>
<td>view:order_items/field:order_item_count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:id </td>
<td>view:products/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:brand </td>
<td>view:products/field:brand is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:bb_email </td>
<td>view:products/field:bb_email is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:brand_contact_email </td>
<td>view:products/field:brand_contact_email is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:bb_symbol </td>
<td>view:products/field:bb_symbol is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:category </td>
<td>view:products/field:category is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:cost </td>
<td>view:products/field:cost is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:department </td>
<td>view:products/field:department is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:department_dynamic_title </td>
<td>view:products/field:department_dynamic_title is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:distribution_center_id </td>
<td>view:products/field:distribution_center_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:name </td>
<td>view:products/field:name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:retail_price </td>
<td>view:products/field:retail_price is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:sku </td>
<td>view:products/field:sku is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:max </td>
<td>view:products/field:max is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:product_count </td>
<td>view:products/field:product_count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:products&#47;field:department_filter </td>
<td>view:products/field:department_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:country_group </td>
<td>view:ranking_google_analytics/field:country_group is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:country_group_rank </td>
<td>view:ranking_google_analytics/field:country_group_rank is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:country </td>
<td>view:ranking_google_analytics/field:country is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:country_rank </td>
<td>view:ranking_google_analytics/field:country_rank is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:city </td>
<td>view:ranking_google_analytics/field:city is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:city_rank </td>
<td>view:ranking_google_analytics/field:city_rank is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:total_sessions </td>
<td>view:ranking_google_analytics/field:total_sessions is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:rank_date_filter </td>
<td>view:ranking_google_analytics/field:rank_date_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_google_analytics&#47;field:country_grouping </td>
<td>view:ranking_google_analytics/field:country_grouping is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:country_group </td>
<td>view:ranking_v2/field:country_group is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:country_group_rank </td>
<td>view:ranking_v2/field:country_group_rank is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:country </td>
<td>view:ranking_v2/field:country is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:country_rank </td>
<td>view:ranking_v2/field:country_rank is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:city </td>
<td>view:ranking_v2/field:city is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:city_rank </td>
<td>view:ranking_v2/field:city_rank is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:total_gross_sales_after_discount </td>
<td>view:ranking_v2/field:total_gross_sales_after_discount is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:total_orders </td>
<td>view:ranking_v2/field:total_orders is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:rank_date_filter </td>
<td>view:ranking_v2/field:rank_date_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:ranking_v2&#47;field:country_grouping </td>
<td>view:ranking_v2/field:country_grouping is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:sleepcycle_demo&#47;field:id </td>
<td>view:sleepcycle_demo/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:sleepcycle_demo&#47;field:user_id </td>
<td>view:sleepcycle_demo/field:user_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:sleepcycle_demo&#47;field:seq_num </td>
<td>view:sleepcycle_demo/field:seq_num is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:sleepcycle_demo&#47;field:running_total </td>
<td>view:sleepcycle_demo/field:running_total is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:sleepcycle_demo&#47;field:count </td>
<td>view:sleepcycle_demo/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:sleepcycle_demo&#47;field:total_revenue </td>
<td>view:sleepcycle_demo/field:total_revenue is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_extd&#47;field:id </td>
<td>view:users_extd/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_extd&#47;field:is_60_day_repeat_purchase_user </td>
<td>view:users_extd/field:is_60_day_repeat_purchase_user is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_fact&#47;field:id </td>
<td>view:users_fact/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_fact&#47;field:state </td>
<td>view:users_fact/field:state is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_fact&#47;field:total_order </td>
<td>view:users_fact/field:total_order is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_fact&#47;field:total_sales </td>
<td>view:users_fact/field:total_sales is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_fact&#47;field:ranking </td>
<td>view:users_fact/field:ranking is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_fact&#47;field:count </td>
<td>view:users_fact/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_fact&#47;field:state_filter </td>
<td>view:users_fact/field:state_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_facts_bkw&#47;field:id </td>
<td>view:users_facts_bkw/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_facts_bkw&#47;field:user_id </td>
<td>view:users_facts_bkw/field:user_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_facts_bkw&#47;field:total_revenue </td>
<td>view:users_facts_bkw/field:total_revenue is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_facts_bkw&#47;field:seq_num </td>
<td>view:users_facts_bkw/field:seq_num is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_facts_bkw&#47;field:running_total </td>
<td>view:users_facts_bkw/field:running_total is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_facts_bkw&#47;field:count </td>
<td>view:users_facts_bkw/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_facts_bkw&#47;field:avg_revenue </td>
<td>view:users_facts_bkw/field:avg_revenue is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_insights&#47;field:id </td>
<td>view:users_insights/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_insights&#47;field:user_id </td>
<td>view:users_insights/field:user_id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_insights&#47;field:total_revenue </td>
<td>view:users_insights/field:total_revenue is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_insights&#47;field:seq_num </td>
<td>view:users_insights/field:seq_num is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_insights&#47;field:running_total </td>
<td>view:users_insights/field:running_total is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_insights&#47;field:count </td>
<td>view:users_insights/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test_1&#47;field:users_test_email </td>
<td>view:users_test_1/field:users_test_email is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test_1&#47;field:users_test_first_name </td>
<td>view:users_test_1/field:users_test_first_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test_1&#47;field:users_test_last_name </td>
<td>view:users_test_1/field:users_test_last_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test_1&#47;field:users_test_state </td>
<td>view:users_test_1/field:users_test_state is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test_1&#47;field:users_test_is_new_user </td>
<td>view:users_test_1/field:users_test_is_new_user is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test_1&#47;field:count </td>
<td>view:users_test_1/field:count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:id </td>
<td>view:users_test/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:age </td>
<td>view:users_test/field:age is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:age_tier </td>
<td>view:users_test/field:age_tier is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:city </td>
<td>view:users_test/field:city is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:country </td>
<td>view:users_test/field:country is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:country_map </td>
<td>view:users_test/field:country_map is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:year </td>
<td>view:users_test/field:year is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:month </td>
<td>view:users_test/field:month is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:east_coast_city_choice </td>
<td>view:users_test/field:east_coast_city_choice is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:days_since_signup_tiers </td>
<td>view:users_test/field:days_since_signup_tiers is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:months_since_signup_tiers </td>
<td>view:users_test/field:months_since_signup_tiers is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:email </td>
<td>view:users_test/field:email is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:first_name </td>
<td>view:users_test/field:first_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:gender </td>
<td>view:users_test/field:gender is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:last_name </td>
<td>view:users_test/field:last_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:latitude </td>
<td>view:users_test/field:latitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:longitude </td>
<td>view:users_test/field:longitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:state </td>
<td>view:users_test/field:state is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:state_map </td>
<td>view:users_test/field:state_map is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:user_location </td>
<td>view:users_test/field:user_location is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:traffic_source </td>
<td>view:users_test/field:traffic_source is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:zip </td>
<td>view:users_test/field:zip is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:is_new_user </td>
<td>view:users_test/field:is_new_user is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:period_over_period_user_count </td>
<td>view:users_test/field:period_over_period_user_count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:average_days_since_signup </td>
<td>view:users_test/field:average_days_since_signup is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:average_months_since_signip </td>
<td>view:users_test/field:average_months_since_signip is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:user_count </td>
<td>view:users_test/field:user_count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:state_filter </td>
<td>view:users_test/field:state_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:test </td>
<td>view:users_test/field:test is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:users_cities_filter </td>
<td>view:users_test/field:users_cities_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:state_parameter </td>
<td>view:users_test/field:state_parameter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users_test&#47;field:city_parameter </td>
<td>view:users_test/field:city_parameter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:id </td>
<td>view:users/field:id is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:age </td>
<td>view:users/field:age is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:arrow_right_down </td>
<td>view:users/field:arrow_right_down is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:arrow_down_left </td>
<td>view:users/field:arrow_down_left is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:age_tier </td>
<td>view:users/field:age_tier is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:city </td>
<td>view:users/field:city is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:country </td>
<td>view:users/field:country is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:country_map </td>
<td>view:users/field:country_map is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:year </td>
<td>view:users/field:year is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:east_coast_city_choice </td>
<td>view:users/field:east_coast_city_choice is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:days_since_signup </td>
<td>view:users/field:days_since_signup is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:days_since_signup_tiers </td>
<td>view:users/field:days_since_signup_tiers is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:months_since_signup_tiers </td>
<td>view:users/field:months_since_signup_tiers is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:email </td>
<td>view:users/field:email is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:first_name </td>
<td>view:users/field:first_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:gender </td>
<td>view:users/field:gender is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:last_name </td>
<td>view:users/field:last_name is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:latitude </td>
<td>view:users/field:latitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:longitude </td>
<td>view:users/field:longitude is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:state </td>
<td>view:users/field:state is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:state_map </td>
<td>view:users/field:state_map is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:user_location </td>
<td>view:users/field:user_location is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:traffic_source </td>
<td>view:users/field:traffic_source is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:zip </td>
<td>view:users/field:zip is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:is_new_user </td>
<td>view:users/field:is_new_user is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:period_over_period_user_count </td>
<td>view:users/field:period_over_period_user_count is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:average_days_since_signup </td>
<td>view:users/field:average_days_since_signup is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:average_months_since_signip </td>
<td>view:users/field:average_months_since_signip is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:my_constant </td>
<td>view:users/field:my_constant is missing a description</td>
>>>>>>> branch 'dev-brendan-buckley-4jqq' of git@github.com:brendanlooker/sso.git
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:my_filter </td>
<td>view:users/field:my_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:test </td>
<td>view:users/field:test is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:users_cities_filter </td>
<td>view:users/field:users_cities_filter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:state_parameter </td>
<td>view:users/field:state_parameter is missing a description</td>
</tr>
<tr>
<td>⚠️</td>
<td>view:users&#47;field:city_parameter </td>
<td>view:users/field:city_parameter is missing a description</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#k1">K1</a>. Primary keys required (19⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>view: bkw_ndt </td>
<td>No Primary Key Dimensions found in bkw_ndt</td>
</tr>
<tr>
<td>⛔</td>
<td>view: customer_behaviour_fact </td>
<td>No Primary Key Dimensions found in customer_behaviour_fact</td>
</tr>
<tr>
<td>⛔</td>
<td>view: customer_behaviour </td>
<td>No Primary Key Dimensions found in customer_behaviour</td>
</tr>
<tr>
<td>⛔</td>
<td>view: distribution_centers </td>
<td>No Primary Key Dimensions found in distribution_centers</td>
</tr>
<tr>
<td>⛔</td>
<td>view: events </td>
<td>No Primary Key Dimensions found in events</td>
</tr>
<tr>
<td>⛔</td>
<td>view: inventory_items </td>
<td>No Primary Key Dimensions found in inventory_items</td>
</tr>
<tr>
<td>⛔</td>
<td>view: order_items_fact </td>
<td>No Primary Key Dimensions found in order_items_fact</td>
</tr>
<tr>
<td>⛔</td>
<td>view: order_items </td>
<td>No Primary Key Dimensions found in order_items</td>
</tr>
<tr>
<td>⛔</td>
<td>view: products </td>
<td>No Primary Key Dimensions found in products</td>
</tr>
<tr>
<td>⛔</td>
<td>view: ranking_google_analytics </td>
<td>No Primary Key Dimensions found in ranking_google_analytics</td>
</tr>
<tr>
<td>⛔</td>
<td>view: ranking_v2 </td>
<td>No Primary Key Dimensions found in ranking_v2</td>
</tr>
<tr>
<td>⛔</td>
<td>view: sleepcycle_demo </td>
<td>No Primary Key Dimensions found in sleepcycle_demo</td>
</tr>
<tr>
<td>⛔</td>
<td>view: users_extd </td>
<td>No Primary Key Dimensions found in users_extd</td>
</tr>
<tr>
<td>⛔</td>
<td>view: users_fact </td>
<td>No Primary Key Dimensions found in users_fact</td>
</tr>
<tr>
<td>⛔</td>
<td>view: users_facts_bkw </td>
<td>No Primary Key Dimensions found in users_facts_bkw</td>
</tr>
<tr>
<td>⛔</td>
<td>view: users_insights </td>
<td>No Primary Key Dimensions found in users_insights</td>
</tr>
<tr>
<td>⛔</td>
<td>view: users_test_1 </td>
<td>No Primary Key Dimensions found in users_test_1</td>
</tr>
<tr>
<td>⛔</td>
<td>view: users_test </td>
<td>No Primary Key Dimensions found in users_test</td>
</tr>
<tr>
<td>⛔</td>
<td>view: users </td>
<td>No Primary Key Dimensions found in users</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#t1">T1</a>. Triggers use datagroups (2⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>view: users_insights </td>
<td>Triggered PDTs should use datagroups or persist_for.</td>
</tr>
<tr>
<td>⛔</td>
<td>view: users_test_1 </td>
<td>Triggered PDTs should use datagroups or persist_for.</td>
</tr></tbody></table></details>
<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;font-size:170%;"><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#t2">T2</a>. Primary keys required (6⛔)</summary>

<table>
<thead><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>
<tr>
<td>⛔</td>
<td>view: ranking_google_analytics </td>
<td>No Primary Key columns/selectAliases found in ranking_google_analytics</td>
</tr>
<tr>
<td>⛔</td>
<td>view: ranking_google_analytics </td>
<td>No Primary Key columns/selectAliases found in ranking_google_analytics</td>
</tr>
<tr>
<td>⛔</td>
<td>view: ranking_google_analytics </td>
<td>No Primary Key columns/selectAliases found in ranking_google_analytics</td>
</tr>
<tr>
<td>⛔</td>
<td>view: ranking_v2 </td>
<td>No Primary Key columns/selectAliases found in ranking_v2</td>
</tr>
<tr>
<td>⛔</td>
<td>view: ranking_v2 </td>
<td>No Primary Key columns/selectAliases found in ranking_v2</td>
</tr>
<tr>
<td>⛔</td>
<td>view: ranking_v2 </td>
<td>No Primary Key columns/selectAliases found in ranking_v2</td>
</tr></tbody></table></details></details>

---

### Icon Key
<table>
<thead><tr>
<th></th>
<th>non-exempted</th>
<th>exempted</th>
</tr></thead>
<tbody>
<tr>
<td>Error</td>
<td>⛔</td>
<td>🙈</td>
</tr>
<tr>
<td>Warning</td>
<td>⚠️</td>
<td>🚧</td>
</tr>
</tbody>
</table>



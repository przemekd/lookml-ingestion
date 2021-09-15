view: orders {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: customer_id {
    sql: ${TABLE}.customer_id ;;
  }
  dimension: amount {
    type: number
    value_format: "0.00"
    sql: ${TABLE}.amount ;;
  }
  dimension_group: created {
    type: time
    timeframes: [date, week]
    sql: ${TABLE}.created_at ;;
  }
  measure: count {
    type: count           # creates sql COUNT(orders.id)
    sql: ${id} ;;
  }
  measure: total_amount {
    type: sum             # creates sql SUM(orders.amount)
    sql: ${amount} ;;
  }
}

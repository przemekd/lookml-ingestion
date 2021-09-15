view: users {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: name {
    sql: ${TABLE}.name ;;
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
}

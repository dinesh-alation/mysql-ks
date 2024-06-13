view: customers_view {
  sql_table_name: crm.customers_view ;;

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customerName ;;
  }
  dimension: customer_number {
    type: number
    sql: ${TABLE}.customerNumber ;;
  }
  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.orderDate ;;
  }
  dimension: order_number {
    type: number
    sql: ${TABLE}.orderNumber ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension_group: shipped {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.shippedDate ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}

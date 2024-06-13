view: payments {
  sql_table_name: crm.payments ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }
  dimension: check_number {
    type: string
    sql: ${TABLE}.checkNumber ;;
  }
  dimension: customer_number {
    type: number
    sql: ${TABLE}.customerNumber ;;
  }
  dimension_group: payment {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.paymentDate ;;
  }
  measure: count {
    type: count
  }
}

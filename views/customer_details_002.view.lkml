view: customer_details_002 {
  sql_table_name: crm.customer_details_002 ;;

  dimension: customername {
    type: string
    sql: ${TABLE}.customername ;;
  }
  dimension_group: paymentdate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.paymentdate ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  measure: count {
    type: count
    drill_fields: [customername]
  }
}

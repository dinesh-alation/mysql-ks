view: customer_details_new_1 {
  sql_table_name: crm.customer_details_new_1 ;;

  dimension: col {
    type: number
    sql: ${TABLE}.col ;;
  }
  measure: count {
    type: count
  }
}

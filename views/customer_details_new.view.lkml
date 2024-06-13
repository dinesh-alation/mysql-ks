view: customer_details_new {
  sql_table_name: crm.customer_details_new ;;

  dimension: col {
    type: number
    sql: ${TABLE}.col ;;
  }
  measure: count {
    type: count
  }
}

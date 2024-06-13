view: table_03 {
  sql_table_name: crm.table_03 ;;

  dimension: col {
    type: number
    sql: ${TABLE}.col ;;
  }
  measure: count {
    type: count
  }
}

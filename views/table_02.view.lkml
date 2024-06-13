view: table_02 {
  sql_table_name: crm.table_02 ;;

  dimension: col {
    type: number
    sql: ${TABLE}.col ;;
  }
  measure: count {
    type: count
  }
}

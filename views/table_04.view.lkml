view: table_04 {
  sql_table_name: crm.table_04 ;;

  dimension: col {
    type: number
    sql: ${TABLE}.col ;;
  }
  measure: count {
    type: count
  }
}

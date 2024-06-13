view: test5 {
  sql_table_name: crm.TEST5 ;;

  dimension: test2_col1 {
    type: number
    sql: ${TABLE}.TEST2_COL1 ;;
  }
  dimension: test2_col2 {
    type: string
    sql: ${TABLE}.TEST2_COL2 ;;
  }
  dimension_group: test2_col3 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TEST2_COL3 ;;
  }
  measure: count {
    type: count
  }
}

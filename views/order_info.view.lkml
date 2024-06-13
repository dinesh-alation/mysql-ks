view: order_info {
  sql_table_name: crm.orderInfo ;;

  dimension: col_bigint {
    type: number
    sql: ${TABLE}.col_bigint ;;
  }
  dimension: col_binary {
    type: string
    sql: ${TABLE}.col_binary ;;
  }
  dimension: col_bit {
    type: string
    sql: ${TABLE}.col_bit ;;
  }
  dimension: col_blob {
    type: string
    sql: ${TABLE}.col_blob ;;
  }
  dimension: col_bool {
    type: yesno
    sql: ${TABLE}.col_bool ;;
  }
  dimension: col_char {
    type: string
    sql: ${TABLE}.col_char ;;
  }
  dimension_group: col_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.col_date ;;
  }
  dimension_group: col_datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.col_datetime ;;
  }
  dimension: col_decimal {
    type: number
    sql: ${TABLE}.col_decimal ;;
  }
  dimension: col_double {
    type: number
    sql: ${TABLE}.col_double ;;
  }
  dimension: col_doubleprecision {
    type: number
    sql: ${TABLE}.col_doubleprecision ;;
  }
  dimension: col_float {
    type: number
    sql: ${TABLE}.col_float ;;
  }
  dimension: col_int {
    type: number
    sql: ${TABLE}.col_int ;;
  }
  dimension: col_integer {
    type: number
    sql: ${TABLE}.col_integer ;;
  }
  dimension: col_longtext {
    type: string
    sql: ${TABLE}.col_longtext ;;
  }
  dimension: col_longvarchar {
    type: string
    sql: ${TABLE}.col_longvarchar ;;
  }
  dimension: col_mediumtext {
    type: string
    sql: ${TABLE}.Col_mediumtext ;;
  }
  dimension: col_numeric {
    type: number
    sql: ${TABLE}.col_numeric ;;
  }
  dimension: col_real {
    type: number
    sql: ${TABLE}.col_real ;;
  }
  dimension: col_set_test {
    type: string
    sql: ${TABLE}.col_set_test ;;
  }
  dimension: col_smallint {
    type: number
    sql: ${TABLE}.col_smallint ;;
  }
  dimension: col_text {
    type: string
    sql: ${TABLE}.col_text ;;
  }
  dimension_group: col_time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.col_time ;;
  }
  dimension_group: col_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.col_timestamp ;;
  }
  dimension: col_tinyint {
    type: yesno
    sql: ${TABLE}.col_tinyint ;;
  }
  dimension: col_tinytext {
    type: string
    sql: ${TABLE}.col_tinytext ;;
  }
  dimension: col_varbinary {
    type: string
    sql: ${TABLE}.col_varbinary ;;
  }
  dimension: col_varchar {
    type: string
    sql: ${TABLE}.col_varchar ;;
  }
  dimension_group: col_year {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.col_year ;;
  }
  measure: count {
    type: count
  }
}

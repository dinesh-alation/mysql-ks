view: persons {
  sql_table_name: crm.Persons ;;
  drill_fields: [person_id]

  dimension: person_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PersonID ;;
  }
  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }
  measure: count {
    type: count
    drill_fields: [person_id, first_name, last_name]
  }
}

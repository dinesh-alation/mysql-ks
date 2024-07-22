view: orders_sql {
  derived_table: {

  # Using sql_trigger to define the persistence
  # Defining the derived table query
  sql: SELECT
        comments,
        customer_number AS customerNumber,
        customer_name
      FROM orders
      -- Test Sandeep
      GROUP BY comments, customer_number, customer_name
      ;;

# Adding an index to the derived table
    indexes: ["comments"]
  }

#####  Basic Web Info  ########

dimension: comments {
  type: string
  primary_key: yes
  sql: ${TABLE}.comments ;;
}

dimension: customer_name {
  type: string
  sql: ${TABLE}.customer_name ;;
}

dimension: customer_number {
  type: string
  sql: ${TABLE}.customerNumber ;;
}

set: detail {
  fields: [comments, customer_name, customer_number]
}
}

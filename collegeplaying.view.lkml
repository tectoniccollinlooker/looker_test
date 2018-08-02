view: collegeplaying {
  sql_table_name: core.collegeplaying ;;

  dimension: playerid {
    type: string
    sql: ${TABLE}.playerid ;;
  }

  dimension: schoolid {
    type: string
    # hidden: yes
    sql: ${TABLE}.schoolid ;;
  }

  dimension: yearid {
    type: number
    value_format_name: id
    sql: ${TABLE}.yearid ;;
  }

  measure: count {
    type: count
    drill_fields: [schools.schoolid]
  }
}

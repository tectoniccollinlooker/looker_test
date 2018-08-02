view: fieldingof {
  sql_table_name: core.fieldingof ;;

  dimension: gcf {
    type: number
    sql: ${TABLE}.gcf ;;
  }

  dimension: glf {
    type: number
    sql: ${TABLE}.glf ;;
  }

  dimension: grf {
    type: number
    sql: ${TABLE}.grf ;;
  }

  dimension: playerid {
    type: string
    sql: ${TABLE}.playerid ;;
  }

  dimension: stint {
    type: number
    sql: ${TABLE}.stint ;;
  }

  dimension: yearid {
    type: number
    value_format_name: id
    sql: ${TABLE}.yearid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

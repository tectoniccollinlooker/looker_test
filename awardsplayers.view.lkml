view: awardsplayers {
  sql_table_name: core.awardsplayers ;;

  dimension: awardid {
    type: string
    sql: ${TABLE}.awardid ;;
  }

  dimension: lgid {
    type: string
    sql: ${TABLE}.lgid ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: playerid {
    type: string
    sql: ${TABLE}.playerid ;;
  }

  dimension: tie {
    type: string
    sql: ${TABLE}.tie ;;
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

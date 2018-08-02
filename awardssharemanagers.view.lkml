view: awardssharemanagers {
  sql_table_name: core.awardssharemanagers ;;

  dimension: awardid {
    type: string
    sql: ${TABLE}.awardid ;;
  }

  dimension: lgid {
    type: string
    sql: ${TABLE}.lgid ;;
  }

  dimension: playerid {
    type: string
    sql: ${TABLE}.playerid ;;
  }

  dimension: pointsmax {
    type: number
    sql: ${TABLE}.pointsmax ;;
  }

  dimension: pointswon {
    type: number
    sql: ${TABLE}.pointswon ;;
  }

  dimension: votesfirst {
    type: number
    sql: ${TABLE}.votesfirst ;;
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

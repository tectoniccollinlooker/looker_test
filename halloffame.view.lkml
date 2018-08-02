view: halloffame {
  sql_table_name: core.halloffame ;;

  dimension: ballots {
    type: number
    sql: ${TABLE}.ballots ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: inducted {
    type: string
    sql: ${TABLE}.inducted ;;
  }

  dimension: needed {
    type: number
    sql: ${TABLE}.needed ;;
  }

  dimension: needed_note {
    type: string
    sql: ${TABLE}.needed_note ;;
  }

  dimension: playerid {
    type: string
    sql: ${TABLE}.playerid ;;
  }

  dimension: votedby {
    type: string
    sql: ${TABLE}.votedby ;;
  }

  dimension: votes {
    type: number
    sql: ${TABLE}.votes ;;
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

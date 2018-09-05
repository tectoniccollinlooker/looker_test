view: allstarfull {
  label: "All Start"
  sql_table_name: core.allstarfull ;;

  dimension: gameid {
    type: string
    sql: ${TABLE}.gameid ;;
  }

  dimension: gamenum {
    type: number
    sql: ${TABLE}.gamenum ;;
  }

  dimension: gp {
    type: number
    sql: ${TABLE}.gp ;;
  }

  dimension: lgid {
    type: string
    sql: ${TABLE}.lgid ;;
  }

  dimension: playerid {
    type: string
    sql: ${TABLE}.playerid ;;
  }

  dimension: startingpos {
    type: number
    sql: ${TABLE}.startingpos ;;
  }

  dimension: teamid {
    type: string
    # hidden: yes
    sql: ${TABLE}.teamid ;;
  }

  dimension: yearid {
    type: number
    value_format_name: id
    sql: ${TABLE}.yearid ;;
  }

  measure: count {
    type: count
    drill_fields: [teams.name, teams.teamidlahman45]
  }
}

view: fieldingpost {
  sql_table_name: core.fieldingpost ;;

  dimension: a {
    type: number
    sql: ${TABLE}.a ;;
  }

  dimension: cs {
    type: string
    sql: ${TABLE}.cs ;;
  }

  dimension: dp {
    type: number
    sql: ${TABLE}.dp ;;
  }

  dimension: e {
    type: number
    sql: ${TABLE}.e ;;
  }

  dimension: g {
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: gs {
    type: number
    sql: ${TABLE}.gs ;;
  }

  dimension: innouts {
    type: number
    sql: ${TABLE}.innouts ;;
  }

  dimension: lgid {
    type: string
    sql: ${TABLE}.lgid ;;
  }

  dimension: pb {
    type: number
    sql: ${TABLE}.pb ;;
  }

  dimension: playerid {
    type: string
    sql: ${TABLE}.playerid ;;
  }

  dimension: po {
    type: number
    sql: ${TABLE}.po ;;
  }

  dimension: pos {
    type: string
    sql: ${TABLE}.pos ;;
  }

  dimension: round {
    type: string
    sql: ${TABLE}.round ;;
  }

  dimension: sb {
    type: string
    sql: ${TABLE}.sb ;;
  }

  dimension: teamid {
    type: string
    # hidden: yes
    sql: ${TABLE}.teamid ;;
  }

  dimension: tp {
    type: number
    sql: ${TABLE}.tp ;;
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

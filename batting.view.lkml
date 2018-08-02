view: batting {
  sql_table_name: core.batting ;;

  dimension: 2_b {
    type: number
    sql: ${TABLE}.2B ;;
  }

  dimension: 3_b {
    type: number
    sql: ${TABLE}.3B ;;
  }

  dimension: ab {
    type: number
    sql: ${TABLE}.ab ;;
  }

  dimension: bb {
    type: number
    sql: ${TABLE}.bb ;;
  }

  dimension: cs {
    type: number
    sql: ${TABLE}.cs ;;
  }

  dimension: g {
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: gidp {
    type: number
    sql: ${TABLE}.gidp ;;
  }

  dimension: h {
    type: number
    sql: ${TABLE}.h ;;
  }

  dimension: hbp {
    type: string
    sql: ${TABLE}.hbp ;;
  }

  dimension: hr {
    type: number
    sql: ${TABLE}.hr ;;
  }

  dimension: ibb {
    type: string
    sql: ${TABLE}.ibb ;;
  }

  dimension: lgid {
    type: string
    sql: ${TABLE}.lgid ;;
  }

  dimension: playerid {
    type: string
    sql: ${TABLE}.playerid ;;
  }

  dimension: r {
    type: number
    sql: ${TABLE}.r ;;
  }

  dimension: rbi {
    type: number
    sql: ${TABLE}.rbi ;;
  }

  dimension: sb {
    type: number
    sql: ${TABLE}.sb ;;
  }

  dimension: sf {
    type: string
    sql: ${TABLE}.sf ;;
  }

  dimension: sh {
    type: string
    sql: ${TABLE}.sh ;;
  }

  dimension: so {
    type: number
    sql: ${TABLE}.so ;;
  }

  dimension: stint {
    type: number
    sql: ${TABLE}.stint ;;
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

  measure: batt_avg {
    type: average
    sql: ${TABLE} ;;
    value_format_name: id
  }
}

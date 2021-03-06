view: pitchingpost {
  sql_table_name: core.pitchingpost ;;

  dimension: baopp {
    type: number
    sql: ${TABLE}.baopp ;;
  }

  dimension: bb {
    type: number
    sql: ${TABLE}.bb ;;
  }

  dimension: bfp {
    type: number
    sql: ${TABLE}.bfp ;;
  }

  dimension: bk {
    type: number
    sql: ${TABLE}.bk ;;
  }

  dimension: cg {
    type: number
    sql: ${TABLE}.cg ;;
  }

  dimension: er {
    type: number
    sql: ${TABLE}.er ;;
  }

  dimension: era {
    type: number
    sql: ${TABLE}.era ;;
  }

  dimension: g {
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: gf {
    type: number
    sql: ${TABLE}.gf ;;
  }

  dimension: gidp {
    type: number
    sql: ${TABLE}.gidp ;;
  }

  dimension: gs {
    type: number
    sql: ${TABLE}.gs ;;
  }

  dimension: h {
    type: number
    sql: ${TABLE}.h ;;
  }

  dimension: hbp {
    type: number
    sql: ${TABLE}.hbp ;;
  }

  dimension: hr {
    type: number
    sql: ${TABLE}.hr ;;
  }

  dimension: ibb {
    type: number
    sql: ${TABLE}.ibb ;;
  }

  dimension: ipouts {
    type: number
    sql: ${TABLE}.ipouts ;;
  }

  dimension: l {
    type: number
    sql: ${TABLE}.l ;;
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

  dimension: round {
    type: string
    sql: ${TABLE}.round ;;
  }

  dimension: sf {
    type: number
    sql: ${TABLE}.sf ;;
  }

  dimension: sh {
    type: number
    sql: ${TABLE}.sh ;;
  }

  dimension: sho {
    type: number
    sql: ${TABLE}.sho ;;
  }

  dimension: so {
    type: number
    sql: ${TABLE}.so ;;
  }

  dimension: sv {
    type: number
    sql: ${TABLE}.sv ;;
  }

  dimension: teamid {
    type: string
    # hidden: yes
    sql: ${TABLE}.teamid ;;
  }

  dimension: w {
    type: number
    sql: ${TABLE}.w ;;
  }

  dimension: wp {
    type: number
    sql: ${TABLE}.wp ;;
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

view: teams {
  sql_table_name: core.teams ;;

  dimension: teamidlahman45 {
    primary_key: yes
    type: string
    sql: ${TABLE}.teamidlahman45 ;;
  }

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

  dimension: attendance {
    type: string
    sql: ${TABLE}.attendance ;;
  }

  dimension: bb {
    type: number
    sql: ${TABLE}.bb ;;
  }

  dimension: bba {
    type: number
    sql: ${TABLE}.bba ;;
  }

  dimension: bpf {
    type: number
    sql: ${TABLE}.bpf ;;
  }

  dimension: cg {
    type: number
    sql: ${TABLE}.cg ;;
  }

  dimension: cs {
    type: number
    sql: ${TABLE}.cs ;;
  }

  dimension: divid {
    type: string
    sql: ${TABLE}.divid ;;
  }

  dimension: divwin {
    type: string
    sql: ${TABLE}.divwin ;;
  }

  dimension: dp {
    type: number
    sql: ${TABLE}.dp ;;
  }

  dimension: e {
    type: number
    sql: ${TABLE}.e ;;
  }

  dimension: er {
    type: number
    sql: ${TABLE}.er ;;
  }

  dimension: era {
    type: number
    sql: ${TABLE}.era ;;
  }

  dimension: fp {
    type: number
    sql: ${TABLE}.fp ;;
  }

  dimension: franchid {
    type: string
    sql: ${TABLE}.franchid ;;
  }

  dimension: g {
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: ghome {
    type: string
    sql: ${TABLE}.ghome ;;
  }

  dimension: h {
    type: number
    sql: ${TABLE}.h ;;
  }

  dimension: ha {
    type: number
    sql: ${TABLE}.ha ;;
  }

  dimension: hbp {
    type: string
    sql: ${TABLE}.hbp ;;
  }

  dimension: hr {
    type: number
    sql: ${TABLE}.hr ;;
  }

  dimension: hra {
    type: number
    sql: ${TABLE}.hra ;;
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

  dimension: lgwin {
    type: string
    sql: ${TABLE}.lgwin ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: park {
    type: string
    sql: ${TABLE}.park ;;
  }

  dimension: ppf {
    type: number
    sql: ${TABLE}.ppf ;;
  }

  dimension: r {
    type: number
    sql: ${TABLE}.r ;;
  }

  dimension: ra {
    type: number
    sql: ${TABLE}.ra ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: sb {
    type: number
    sql: ${TABLE}.sb ;;
  }

  dimension: sf {
    type: string
    sql: ${TABLE}.sf ;;
  }

  dimension: sho {
    type: number
    sql: ${TABLE}.sho ;;
  }

  dimension: so {
    type: number
    sql: ${TABLE}.so ;;
  }

  dimension: soa {
    type: number
    sql: ${TABLE}.soa ;;
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

  dimension: teamidbr {
    type: string
    sql: ${TABLE}.teamidbr ;;
  }

  dimension: teamidretro {
    type: string
    sql: ${TABLE}.teamidretro ;;
  }

  dimension: w {
    type: number
    sql: ${TABLE}.w ;;
  }

  dimension: wcwin {
    type: string
    sql: ${TABLE}.wcwin ;;
  }

  dimension: wswin {
    type: string
    sql: ${TABLE}.wswin ;;
  }

  dimension: yearid {
    type: number
    value_format_name: id
    sql: ${TABLE}.yearid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      teamidlahman45,
      name,
      teams.name,
      teams.teamidlahman45,
      allstarfull.count,
      appearances.count,
      batting.count,
      battingpost.count,
      fielding.count,
      fieldingofsplit.count,
      fieldingpost.count,
      managers.count,
      managershalf.count,
      pitching.count,
      pitchingpost.count,
      salaries.count,
      teams.count,
      teamshalf.count
    ]
  }
}

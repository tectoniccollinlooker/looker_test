view: batting {
  sql_table_name: core.batting ;;

  dimension: doubles {
    type: number
    sql: ${TABLE}.2B ;;
  }

  dimension: triples {
    type: number
    sql: ${TABLE}.3B ;;
  }

  dimension: at_bats {
    type: number
    sql: ${TABLE}.ab ;;
  }

  dimension: base_on_balls {
    type: number
    sql: ${TABLE}.bb ;;
  }

  dimension: caught_stealing {
    type: number
    sql: ${TABLE}.cs ;;
  }

  dimension: games {
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: grounded_into_double_plays {
    type: number
    sql: ${TABLE}.gidp ;;
  }

  dimension: hits {
    type: number
    sql: ${TABLE}.h ;;
  }

  dimension: hit_by_pitch {
    type: string
    sql: ${TABLE}.hbp ;;
  }

  dimension: home_runs {
    type: number
    sql: ${TABLE}.hr ;;
  }

  dimension: intentional_walks {
    type: string
    sql: ${TABLE}.ibb ;;
  }

  dimension: league {
    type: string
    sql: ${TABLE}.lgid ;;
  }

  dimension: playerid {
    type: string
    sql: ${TABLE}.playerid ;;
  }

  dimension: runs {
    type: number
    sql: ${TABLE}.r ;;
  }

  dimension: runs_batted_in {
    type: number
    sql: ${TABLE}.rbi ;;
  }

  dimension: stolen_bases {
    type: number
    sql: ${TABLE}.sb ;;
  }

  dimension: sacrifice_flies {
    type: string
    sql: ${TABLE}.sf ;;
  }

  dimension: sacrifice_hits {
    type: string
    sql: ${TABLE}.sh ;;
  }

  dimension: strikeouts {
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

  measure: average_at_bat {
    type: average
    sql:${at_bats} ;;
  }

}

view: pitching {
  sql_table_name: core.pitching ;;

  dimension: opponents_batting_avg {
    type: string
    sql: ${TABLE}.baopp ;;
  }

  dimension: walks {
    type: number
    sql: ${TABLE}.bb ;;
  }

  dimension: batters_face_by_pitcher {
    type: number
    sql: ${TABLE}.bfp ;;
  }

  dimension: balks {
    type: number
    sql: ${TABLE}.bk ;;
  }

  dimension: complete_games {
    type: number
    sql: ${TABLE}.cg ;;
  }

  dimension: earned_runs {
    type: number
    sql: ${TABLE}.er ;;
  }

  dimension: earned_run_avg {
    type: number
    sql: ${TABLE}.era ;;
  }

  dimension: games {
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: games_finished {
    type: number
    sql: ${TABLE}.gf ;;
  }

  dimension: grounded_in_double_plays_by_opp_batter {
    type: string
    sql: ${TABLE}.gidp ;;
  }

  dimension: games_started {
    type: number
    sql: ${TABLE}.gs ;;
  }

  dimension: hits {
    type: number
    sql: ${TABLE}.h ;;
  }

  dimension: batters_hit_by_pitch {
    type: string
    sql: ${TABLE}.hbp ;;
  }

  dimension: homeruns {
    type: number
    sql: ${TABLE}.hr ;;
  }

  dimension: intentional_walks {
    type: string
    sql: ${TABLE}.ibb ;;
  }

  dimension: outs_pitched {
    type: number
    sql: ${TABLE}.ipouts ;;
  }

  dimension: losses {
    type: number
    sql: ${TABLE}.l ;;
  }

  dimension: league {
    type: string
    sql: ${TABLE}.lgid ;;
  }

  dimension: playerid {
    type: string
    sql: ${TABLE}.playerid ;;
  }

  dimension: runs_allowed {
    type: number
    sql: ${TABLE}.r ;;
  }

  dimension: sacrifice_flies_by_opp_batter {
    type: string
    sql: ${TABLE}.sf ;;
  }

  dimension: sacrifices_by_opp_batter {
    type: string
    sql: ${TABLE}.sh ;;
  }

  dimension: shutouts {
    type: number
    sql: ${TABLE}.sho ;;
  }

  dimension: strikeouts {
    type: number
    sql: ${TABLE}.so ;;
  }

  dimension: stint {
    type: number
    sql: ${TABLE}.stint ;;
  }

  dimension: saves {
    type: number
    sql: ${TABLE}.sv ;;
  }

  dimension: teamid {
    type: string
    # hidden: yes
    sql: ${TABLE}.teamid ;;
  }

  dimension: wins {
    type: number
    sql: ${TABLE}.w ;;
  }

  dimension: wild_pitches {
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

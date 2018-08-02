view: fielding {
  sql_table_name: core.fielding ;;

  dimension: assists {
    type: number
    sql: ${TABLE}.a ;;
  }

  dimension: opps_caught_stealing {
    type: number
    sql: ${TABLE}.cs ;;
  }

  dimension: double_plays {
    type: number
    sql: ${TABLE}.dp ;;
  }

  dimension: errors {
    type: number
    sql: ${TABLE}.e ;;
  }

  dimension: games {
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: games_started {
    type: number
    sql: ${TABLE}.gs ;;
  }

  dimension: time_played_expressed_as_outs {
    type: number
    sql: ${TABLE}.innouts ;;
  }

  dimension: league {
    type: string
    sql: ${TABLE}.lgid ;;
  }

  dimension: passed_balls {
    type: number
    sql: ${TABLE}.pb ;;
  }

  dimension: playerid {
    type: string
    sql: ${TABLE}.playerid ;;
  }

  dimension: putouts {
    type: number
    sql: ${TABLE}.po ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.pos ;;
  }

  dimension: opp_stolen_bases {
    type: number
    sql: ${TABLE}.sb ;;
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

  dimension: wild_pitches {
    type: string
    sql: ${TABLE}.wp ;;
  }

  dimension: yearid {
    type: number
    value_format_name: id
    sql: ${TABLE}.yearid ;;
  }

  dimension: zone_rating {
    type: string
    sql: ${TABLE}.zr ;;
  }

  measure: count {
    type: count
    drill_fields: [teams.name, teams.teamidlahman45]
  }
}

view: homegames {
  sql_table_name: core.homegames ;;

  dimension: attendance {
    type: number
    sql: ${TABLE}.attendance ;;
  }

  dimension: games {
    type: number
    sql: ${TABLE}.games ;;
  }

  dimension: league_key {
    type: string
    sql: ${TABLE}."league.key" ;;
  }

  dimension: openings {
    type: number
    sql: ${TABLE}.openings ;;
  }

  dimension: park_key {
    type: string
    sql: ${TABLE}."park.key" ;;
  }

  dimension: span_first {
    type: string
    sql: ${TABLE}."span.first" ;;
  }

  dimension: span_last {
    type: string
    sql: ${TABLE}."span.last" ;;
  }

  dimension: team_key {
    type: string
    sql: ${TABLE}."team.key" ;;
  }

  dimension: year_key {
    type: number
    sql: ${TABLE}."year.key" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

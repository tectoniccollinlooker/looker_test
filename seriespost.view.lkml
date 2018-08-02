view: seriespost {
  sql_table_name: core.seriespost ;;

  dimension: lgidloser {
    type: string
    sql: ${TABLE}.lgidloser ;;
  }

  dimension: lgidwinner {
    type: string
    sql: ${TABLE}.lgidwinner ;;
  }

  dimension: losses {
    type: number
    sql: ${TABLE}.losses ;;
  }

  dimension: round {
    type: string
    sql: ${TABLE}.round ;;
  }

  dimension: teamidloser {
    type: string
    sql: ${TABLE}.teamidloser ;;
  }

  dimension: teamidwinner {
    type: string
    sql: ${TABLE}.teamidwinner ;;
  }

  dimension: ties {
    type: number
    sql: ${TABLE}.ties ;;
  }

  dimension: wins {
    type: number
    sql: ${TABLE}.wins ;;
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

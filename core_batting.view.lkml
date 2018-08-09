view: core_batting {
  derived_table: {
    sql: Select sum(so) from core.batting
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: sum {
    type: number
    sql: ${TABLE}.sum ;;
  }

  set: detail {
    fields: [sum]
  }
}

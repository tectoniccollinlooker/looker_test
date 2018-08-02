view: teamsfranchises {
  sql_table_name: core.teamsfranchises ;;

  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }

  dimension: franchid {
    type: string
    sql: ${TABLE}.franchid ;;
  }

  dimension: franchname {
    type: string
    sql: ${TABLE}.franchname ;;
  }

  dimension: naassoc {
    type: string
    sql: ${TABLE}.naassoc ;;
  }

  measure: count {
    type: count
    drill_fields: [franchname]
  }
}

view: parks {
  sql_table_name: core.parks ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: park_alias {
    type: string
    sql: ${TABLE}."park.alias" ;;
  }

  dimension: park_key {
    type: string
    sql: ${TABLE}."park.key" ;;
  }

  dimension: park_name {
    type: string
    sql: ${TABLE}."park.name" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [park_name]
  }
}

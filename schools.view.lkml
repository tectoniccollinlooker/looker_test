view: schools {
  sql_table_name: core.schools ;;

  dimension: schoolid {
    primary_key: yes
    type: string
    sql: ${TABLE}.schoolid ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: name_full {
    type: string
    sql: ${TABLE}.name_full ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [schoolid, collegeplaying.count]
  }
}

view: census_1 {
  derived_table: {
    sql: SELECT * FROM `tt-cust-analytics.census.population_by_zip_2010`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: geo_id {
    type: string
    sql: ${TABLE}.geo_id ;;
  }

  dimension: zipcode {
    type: string
    sql: ${TABLE}.zipcode ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.population ;;
  }

  dimension: minimum_age {
    type: number
    sql: ${TABLE}.minimum_age ;;
  }

  dimension: maximum_age {
    type: number
    sql: ${TABLE}.maximum_age ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  set: detail {
    fields: [
      geo_id,
      zipcode,
      population,
      minimum_age,
      maximum_age,
      gender
    ]
  }
}

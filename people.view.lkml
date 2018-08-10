view: people {
  sql_table_name: core.people ;;

  dimension: bats {
    type: string
    sql: ${TABLE}.bats ;;
  }

  dimension: bbrefid {
    type: string
    sql: ${TABLE}.bbrefid ;;
  }

  dimension: birthcity {
    type: string
    sql: ${TABLE}.birthcity ;;
  }

  dimension: birthcountry {
    type: string
    sql: ${TABLE}.birthcountry ;;
  }

  dimension: birthday {
    type: date_day_of_month
    sql: ${TABLE}.birthday;;
  }

  dimension: birthmonth {
    type: date_fiscal_month_num
    sql: ${TABLE}.birthmonth ;;
  }

  dimension: birthstate {
    type: string
    sql: ${TABLE}.birthstate ;;
  }

  dimension: birthyear {
    type: date_year
    sql: ${TABLE}.birthyear ;;
  }

  dimension: deathcity {
    type: string
    sql: ${TABLE}.deathcity ;;
  }

  dimension: deathcountry {
    type: string
    sql: ${TABLE}.deathcountry ;;
  }

  dimension: deathday {
    type: date_day_of_year
    sql: ${TABLE}.deathday ;;
  }

  dimension: deathmonth {
    type: date_month
    sql: ${TABLE}.deathmonth ;;
  }

  dimension: deathstate {
    type: string
    sql: ${TABLE}.deathstate ;;
  }

  dimension: deathyear {
    type: date
    sql: ${TABLE}.deathyear ;;
  }

  dimension: debut {
    type: date
    sql: DATE(${TABLE}.debut) ;;
  }

  dimension: finalgame {
    type: date
    sql: DATE(${TABLE}.finalgame) ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: namefirst {
    type: string
    sql: ${TABLE}.namefirst ;;
  }

  dimension: namegiven {
    type: string
    sql: ${TABLE}.namegiven ;;
  }

  dimension: namelast {
    type: string
    sql: ${TABLE}.namelast ;;
  }

  dimension: playerid {
    type: string
    sql: ${TABLE}.playerid ;;
  }

  dimension: retroid {
    type: string
    sql: ${TABLE}.retroid ;;
  }

  dimension: throws {
    type: string
    sql: ${TABLE}.throws ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  measure: count {
    type: count
  }
}

connection: "google_baseball_stats_db"

# include all the views
include: "*.view"

datagroup: baseball_statistics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: baseball_statistics_default_datagroup

explore: allstarfull {
  join: teams {
    type: left_outer
    sql_on: ${allstarfull.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: appearances {
  join: teams {
    type: left_outer
    sql_on: ${appearances.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: awardsmanagers {}

explore: awardsplayers {}

explore: awardssharemanagers {}

explore: awardsshareplayers {}

explore: batting {
  join: teams {
    type: left_outer
    sql_on: ${batting.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: battingpost {
  join: teams {
    type: left_outer
    sql_on: ${battingpost.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: collegeplaying {
  join: schools {
    type: left_outer
    sql_on: ${collegeplaying.schoolid} = ${schools.schoolid} ;;
    relationship: many_to_one
  }
}

explore: fielding {
  join: teams {
    type: left_outer
    sql_on: ${fielding.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: fieldingof {}

explore: fieldingofsplit {
  join: teams {
    type: left_outer
    sql_on: ${fieldingofsplit.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: fieldingpost {
  join: teams {
    type: left_outer
    sql_on: ${fieldingpost.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: halloffame {}

explore: homegames {}

explore: managers {
  join: teams {
    type: left_outer
    sql_on: ${managers.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: managershalf {
  join: teams {
    type: left_outer
    sql_on: ${managershalf.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: parks {}

explore: people {
  join: batting {
    type: full_outer
    sql_on: ${people.playerid} = ${batting.playerid} ;;
    relationship: one_to_many
  }
}

explore: pitching {
  join: teams {
    type: left_outer
    sql_on: ${pitching.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: pitchingpost {
  join: teams {
    type: left_outer
    sql_on: ${pitchingpost.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: salaries {
  join: teams {
    type: left_outer
    sql_on: ${salaries.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: schools {}

explore: seriespost {}

explore: teams {}

explore: teamsfranchises {}

explore: teamshalf {
  join: teams {
    type: left_outer
    sql_on: ${teamshalf.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

connection: "google_baseball_stats_db"

# include all the views
include: "*.view"

datagroup: baseball_statistics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: baseball_statistics_default_datagroup

#explore: sql_runner_query_example {}

explore: allstarfull {
  join: teams {
    type: left_outer
    sql_on: ${allstarfull.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: appearances {
  hidden: yes
  join: teams {
    type: left_outer
    sql_on: ${appearances.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: awardsmanagers {
  hidden: yes
}

explore: awardsplayers {
  hidden: yes
}

explore: awardssharemanagers {
  hidden: yes
}

explore: awardsshareplayers {
  hidden: yes
}

explore: batting {
  hidden: yes
  join: teams {
    type: left_outer
    sql_on: ${batting.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: battingpost {
  hidden: yes
  join: teams {
    type: left_outer
    sql_on: ${battingpost.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: collegeplaying {
  hidden: yes
  join: schools {
    type: left_outer
    sql_on: ${collegeplaying.schoolid} = ${schools.schoolid} ;;
    relationship: many_to_one
  }
}

explore: fielding {
  hidden: yes
  join: teams {
    type: left_outer
    sql_on: ${fielding.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: fieldingof {
  hidden: yes
}

explore: fieldingofsplit {
  hidden: yes
  join: teams {
    type: left_outer
    sql_on: ${fieldingofsplit.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: fieldingpost {
  hidden: yes
  join: teams {
    type: left_outer
    sql_on: ${fieldingpost.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: halloffame {}

explore: homegames {
  hidden: yes
}

explore: managers {
  hidden: yes
  join: teams {
    type: left_outer
    sql_on: ${managers.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: managershalf {
  hidden: yes
  join: teams {
    type: left_outer
    sql_on: ${managershalf.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: parks {
  hidden: yes
}

explore: people {
  join: batting {
    type: full_outer
    sql_on: ${people.playerid} = ${batting.playerid} ;;
    relationship: one_to_one
  }
}

explore: pitching {
  hidden: yes
  join: teams {
    type: left_outer
    sql_on: ${pitching.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

explore: pitchingpost {
  hidden: yes
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

explore: schools {
  hidden: yes
}

explore: seriespost {
  hidden: yes
}

explore: teams {}

explore: teamsfranchises {
  hidden: yes
}

explore: teamshalf {
  hidden: yes
  join: teams {
    type: left_outer
    sql_on: ${teamshalf.teamid} = ${teams.teamidlahman45} ;;
    relationship: many_to_one
  }
}

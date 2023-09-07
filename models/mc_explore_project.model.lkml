connection: "mc_sql_looker"

# include all the views
# include: "/views/**/*.view.lkml"


include: "/explores/mc_explore_file.explore.lkml"


datagroup: mc_explore_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mc_explore_project_default_datagroup

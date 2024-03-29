connection: "kb-daas-dev"

# include all the views
include: "/views/**/*.view"

datagroup: dgk_poc_modle_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dgk_poc_modle_default_datagroup

explore: bank_category_daily {}

explore: category {}

explore: category_daily_top_100 {}

explore: category_keyword_daily_top_100 {}

explore: keyword {}

explore: keyword_daily_top_100 {}

explore: keyword_id {}

explore: keyword_list {}

explore: sentence {}

explore: sentence_poc {}

explore: big4_bank_sh {}

explore: big4_bank_etc {}

explore: big4_bank_kb {}

explore: big4_bank_wo {}

explore: big4_bank_nh {}

view: category_keyword_daily_top_100 {
  sql_table_name: `mart_200723.category_keyword_daily_top_100`
    ;;

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension: cnt {
    type: number
    sql: ${TABLE}.CNT ;;
  }

  dimension: cnt_doc {
    type: number
    sql: ${TABLE}.CNT_DOC ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.KEYWORD ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.RANK ;;
  }

  dimension: row_num {
    type: number
    sql: ${TABLE}.ROW_NUM ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.TYPE ;;
  }

  dimension: write_day {
    type: number
    sql: ${TABLE}.WRITE_DAY ;;
  }

  dimension: mydate {
    type: date
    sql: TIMESTAMP(PARSE_DATE('%Y%m%d', FORMAT('%08d',${TABLE}.WRITE_DAY)));;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: report_entry {
  sql_table_name: CtcInventory.ReportEntry ;;

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: date_time_stamp {
    type: string
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: format {
    type: string
    sql: ${TABLE}.Format ;;
  }

  dimension: frequency {
    type: string
    sql: ${TABLE}.Frequency ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: report_code {
    type: string
    sql: ${TABLE}.ReportCode ;;
  }

  dimension: report_locale {
    type: string
    sql: ${TABLE}.ReportLocale ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.SessionId ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserId ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.Version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

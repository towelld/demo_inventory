view: match_jobs {
  sql_table_name: CtcInventory.MatchJobs ;;

  dimension: date_time_stamp {
    type: date_time
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.Duration ;;
  }

  dimension: match_id {
    type: string
    sql: ${TABLE}.MatchId ;;
  }

  dimension: number_of_matched_groups {
    type: number
    sql: ${TABLE}.NumberOfMatchedGroups ;;
  }

  dimension: number_of_matched_records {
    type: number
    sql: ${TABLE}.NumberOfMatchedRecords ;;
  }

  dimension: number_of_partial_groups {
    type: number
    sql: ${TABLE}.NumberOfPartialGroups ;;
  }

  dimension: number_of_partial_records {
    type: number
    sql: ${TABLE}.NumberOfPartialRecords ;;
  }

  dimension: number_of_records {
    type: number
    sql: ${TABLE}.NumberOfRecords ;;
  }

  dimension: number_of_suggested_groups {
    type: number
    sql: ${TABLE}.NumberOfSuggestedGroups ;;
  }

  dimension: number_of_suggested_records {
    type: number
    sql: ${TABLE}.NumberOfSuggestedRecords ;;
  }

  dimension: number_of_unmatched_records {
    type: number
    sql: ${TABLE}.NumberOfRecords - ${TABLE}.NumberOfMatchedRecords ;;
  }


  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: rec_name {
    type: string
    sql: ${TABLE}.RecName ;;
    link: {
      label: "Control Summary"
      url: "http://localhost:9999/embed/dashboards/demo_cash::cash_control_summary"
    }
  }

  dimension: rec_operational_cycle {
    type: string
    sql: ${TABLE}.RecOperationalCycle ;;
  }

  dimension: tenant_token {
    type: string
    sql: ${TABLE}.TenantToken ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  measure: count {
    type: count
    drill_fields: [rec_name]
  }

  measure: sum_number_of_matched_groups {
    type: sum
    sql: ${TABLE}.NumberOfMatchedGroups ;;
  }

  measure: sum_number_of_matched_records {
    type: sum
    sql: ${TABLE}.NumberOfMatchedRecords ;;
    link: {
      label: "Control Summary"
      url: "http://localhost:9999/embed/dashboards/demo_cash::cash_control_summary"
    }
  }

  measure: sum_number_of_unmatched_records {
    type: sum
    sql: ${number_of_unmatched_records} ;;
    link: {
      label: "Control Summary"
      url: "http://localhost:9999/embed/dashboards/demo_cash::cash_control_summary"
    }
  }

  measure: sum_number_of_partial_groups {
    type: sum
    sql: ${TABLE}.NumberOfPartialGroups ;;
  }

  measure: sum_number_of_partial_records {
    type: sum
    sql: ${TABLE}.NumberOfPartialRecords ;;
  }

  measure: sum_number_of_records {
    type: sum
    sql: ${TABLE}.NumberOfRecords ;;
  }

  measure: sum_number_of_suggested_groups {
    type: sum
    sql: ${TABLE}.NumberOfSuggestedGroups ;;
  }

  measure: sum_number_of_suggested_records {
    type: sum
    sql: ${TABLE}.NumberOfSuggestedRecords ;;
  }

  measure: sum_duration {
    type: sum
    sql: ${TABLE}.Duration ;;
  }

  measure: sum_duration_seconds {
    type: sum
    sql: ${TABLE}.Duration/1000 ;;
  }


}

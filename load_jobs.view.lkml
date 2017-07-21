view: load_jobs {
  sql_table_name: CtcInventory.LoadJobs ;;

  dimension: date_time_stamp {
    type: date_time
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: feed_name {
    type: string
    sql: ${TABLE}.FeedName ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.FileName ;;
  }

  dimension: load_duration {
    type: number
    sql: ${TABLE}.LoadDuration ;;
  }

  dimension: load_duration_seconds {
    type: number
    sql: ${TABLE}.LoadDuration/1000 ;;
  }

  dimension: load_id {
    type: number
    sql: ${TABLE}.LoadId ;;
  }

  dimension: number_of_discarded_records {
    type: number
    sql: ${TABLE}.NumberOfDiscardedRecords ;;
  }

  dimension: number_of_loaded_records {
    type: number
    sql: ${TABLE}.NumberOfLoadedRecords ;;
  }

  dimension: package {
    type: string
    sql: ${TABLE}.Package ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: rec_name {
    type: string
    sql: ${TABLE}.RecName ;;
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
    drill_fields: [feed_name, file_name, rec_name]
  }

  measure: sum_load_duration {
    type: sum
    sql: ${TABLE}.LoadDuration ;;
  }

  measure: sum_load_duration_seconds {
    type: sum
    sql: ${TABLE}.LoadDuration/1000 ;;
  }

  measure: sum_number_of_discarded_records {
    type: sum
    sql: ${TABLE}.NumberOfDiscardedRecords ;;
  }

  measure: sum_number_of_loaded_records {
    type: sum
    sql: ${TABLE}.NumberOfLoadedRecords ;;
  }

}

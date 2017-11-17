view: system_status {
  sql_table_name: CtcSystem.SystemStatus ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: last_control_sign_off {
    type: string
    sql: ${TABLE}.LastControlSignOff ;;
  }

  dimension: rec_name {
    type: string
    sql: ${TABLE}.RecName ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
  }

  dimension: tenant_token {
    type: string
    sql: ${TABLE}.TenantToken ;;
  }

  measure: count {
    type: count
    drill_fields: [id, rec_name]
  }
}

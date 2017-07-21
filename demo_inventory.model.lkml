connection: "ctc"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: load_jobs {
  persist_for: "1 minutes"
  join: system_status {
    sql_on: ${system_status.tenant_token} = ${load_jobs.tenant_token} and ]
            ${system_status.rec_name} = ${load_jobs.rec_name};;
    relationship: one_to_one
  }
}

explore: match_jobs {
  persist_for: "1 minutes"
  join: system_status {
    sql_on: ${system_status.tenant_token} = ${match_jobs.tenant_token} and ]
      ${system_status.rec_name} = ${match_jobs.rec_name};;
    relationship: one_to_one
  }
}

explore: report_entry {
  persist_for: "1 minutes"
}

explore: system_status {
  persist_for: "1 minutes"
}

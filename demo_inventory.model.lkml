connection: "ctc"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: load_jobs {
  persist_for: "1 minutes"
}

explore: match_jobs {
  persist_for: "1 minutes"
}

explore: report_entry {
  persist_for: "1 minutes"
}

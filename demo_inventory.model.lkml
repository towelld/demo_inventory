connection: "ctc"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: load_jobs {}

explore: match_jobs {}

explore: report_entry {}

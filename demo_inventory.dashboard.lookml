- dashboard: demo_inventory
  title: Inventory
  layout: static
  width: 1632
  tile_size: 68
  auto_run: true
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: true
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  elements:

  - name: match_status
    title: Match Status
    left: 0
    top: 0
    height: 8
    width: 24
    type: looker_column
    model: demo_inventory
    explore: match_jobs
    dimensions: [match_jobs.rec_name]
    measures: [match_jobs.sum_number_of_matched_records, match_jobs.sum_number_of_unmatched_records]
    filters:
      match_jobs.rec_name: "-ICE"
      match_jobs.tenant_token: demo
    sorts: [match_jobs.sum_number_of_matched_records desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: percent
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      match_jobs.sum_number_of_matched_records: "#646569"
      match_jobs.sum_number_of_unmatched_records: "#fa8d29"
    series_labels:
      match_jobs.sum_number_of_matched_records: Matched
      match_jobs.sum_number_of_unmatched_records: Unmatched

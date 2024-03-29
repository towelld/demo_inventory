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

  filters:
  - name: tenant_token
    label: 'Tenant'
    type: field_filter
    model: demo_inventory
    explore: system_status
    field: system_status.tenant_token
    default_value: "cshstk"

  elements:

  - name: load_status
    title: Records Loaded
    left: 0
    top: 0
    height: 6
    width: 11
    type: looker_column
    model: demo_inventory
    explore: load_jobs
    dimensions: [load_jobs.rec_name]
    pivots: [load_jobs.rec_name]
    measures: [load_jobs.sum_number_of_loaded_records]
    listen:
      tenant_token: system_status.tenant_token
    sorts: [load_jobs.rec_name]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: circle_outline
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types:
      __FILE: demo_inventory/demo_inventory.dashboard.lookml
      __LINE_NUM: 115
    hide_legend: false

  - name: files_loaded
    title: Files Loaded
    left: 0
    top: 6
    height: 8
    width: 11
    type: looker_grid
    model: demo_inventory
    explore: load_jobs
    dimensions: [load_jobs.rec_name, load_jobs.file_name, load_jobs.date_time_stamp,
      load_jobs.number_of_loaded_records]
    listen:
      tenant_token: system_status.tenant_token
    sorts: [load_jobs.date_time_stamp desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false



  - name: match_status
    title: Match Status
    left: 12
    top: 0
    height: 6
    width: 11
    type: looker_column
    model: demo_inventory
    explore: match_jobs
    dimensions: [match_jobs.rec_name]
    measures: [match_jobs.sum_number_of_matched_records, match_jobs.sum_number_of_unmatched_records]
    listen:
      tenant_token: system_status.tenant_token
    sorts: [match_jobs.rec_name]
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

  - name: match_jobs
    title: Match Jobs
    left: 12
    top: 6
    height: 8
    width: 11
    type: looker_grid
    model: demo_inventory
    explore: match_jobs
    dimensions: [match_jobs.rec_name, match_jobs.date_time_stamp, match_jobs.number_of_matched_records,
      match_jobs.number_of_unmatched_records]
    dynamic_fields:
    - table_calculation: match_percentage
      label: Match Percentage
      expression: "${match_jobs.number_of_matched_records}/(${match_jobs.number_of_matched_records}+${match_jobs.number_of_unmatched_records})"
      value_format:
      value_format_name: percent_2
    listen:
      tenant_token: system_status.tenant_token
    sorts: [match_jobs.date_time_stamp desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: []
    series_labels:
      match_percentage: Match Rate
json.extract! bug, :id, :report_timestamp, :title_of_bug_report, :reported_by, :hardware, :browser, :description_of_issue, :reproducible, :severity, :priority, :qa_team_member, :number_of_reports, :referred_to, :created_at, :updated_at
json.url bug_url(bug, format: :json)

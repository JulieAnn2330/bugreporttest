class CreateBugs < ActiveRecord::Migration[6.1]
  def change
    create_table :bugs do |t|
      t.timestamp :report_timestamp
      t.text :title_of_bug_report
      t.text :reported_by
      t.text :hardware
      t.text :browser
      t.text :description_of_issue
      t.text :reproducible
      t.text :severity
      t.text :priority
      t.text :qa_team_member
      t.integer :number_of_reports
      t.text :referred_to

      t.timestamps
    end
  end
end

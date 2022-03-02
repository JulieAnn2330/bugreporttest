class AddBugStatusToBugs < ActiveRecord::Migration[6.1]
  def change
    add_column :bugs, :bug_status, :text
    add_index :bugs, :bug_status
  end
end

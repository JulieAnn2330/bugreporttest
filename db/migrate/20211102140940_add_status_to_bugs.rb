class AddStatusToBugs < ActiveRecord::Migration[6.1]
  def change
    add_column :bugs, :status, :text
  end
end

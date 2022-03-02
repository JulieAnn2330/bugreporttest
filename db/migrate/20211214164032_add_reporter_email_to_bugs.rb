class AddReporterEmailToBugs < ActiveRecord::Migration[6.1]
  def change
    add_column :bugs, :reporter_email, :varchar
  end
end

class AddOperatingSystemToBugs < ActiveRecord::Migration[6.1]
  def change
    add_column :bugs, :operating_system, :text
  end
end

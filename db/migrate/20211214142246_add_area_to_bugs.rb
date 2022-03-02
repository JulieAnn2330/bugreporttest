class AddAreaToBugs < ActiveRecord::Migration[6.1]
  def change
    add_column :bugs, :area, :text
  end
end

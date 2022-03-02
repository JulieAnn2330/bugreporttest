class AddResolutionToBugs < ActiveRecord::Migration[6.1]
  def change
    add_column :bugs, :resolution, :text
  end
end

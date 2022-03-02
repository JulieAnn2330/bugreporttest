class AddUrlToBugs < ActiveRecord::Migration[6.1]
  def change
    add_column :bugs, :url, :text
  end
end

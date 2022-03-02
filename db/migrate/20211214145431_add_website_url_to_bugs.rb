class AddWebsiteUrlToBugs < ActiveRecord::Migration[6.1]
  def change
    add_column :bugs, :website_url, :varchar
  end
end

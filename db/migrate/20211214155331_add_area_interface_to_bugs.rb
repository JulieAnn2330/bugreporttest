class AddAreaInterfaceToBugs < ActiveRecord::Migration[6.1]
  def change
    add_column :bugs, :area_interface, :varchar
  end
end

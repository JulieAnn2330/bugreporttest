class AddVehicleIdToBugs < ActiveRecord::Migration[6.1]
  def change
    add_column :bugs, :vehicle_id, :text
  end
end

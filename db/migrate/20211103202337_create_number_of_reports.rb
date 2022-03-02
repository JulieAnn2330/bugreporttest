class CreateNumberOfReports < ActiveRecord::Migration[6.1]
  def change
    create_table :number_of_reports do |t|

      t.timestamps
    end
  end
end

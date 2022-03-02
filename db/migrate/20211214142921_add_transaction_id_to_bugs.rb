class AddTransactionIdToBugs < ActiveRecord::Migration[6.1]
  def change
    add_column :bugs, :transaction_id, :text
  end
end

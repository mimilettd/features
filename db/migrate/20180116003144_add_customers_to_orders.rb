class AddCustomersToOrders < ActiveRecord::Migration[5.1]
  def change
    change_table(:orders) do |t|
      t.references :customer
    end
  end
end
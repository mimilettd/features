class AddSalesChannelToOrders < ActiveRecord::Migration[5.1]
  def change
    change_table(:orders) do |t|
      t.column :sales_channel, :integer, default: 0
    end
  end
end

class AddColumnDeliveryToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :delivery_in, :datetime
  end
end

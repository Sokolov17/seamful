class RemoveColumnFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :menuorder_id, :string
  end
end

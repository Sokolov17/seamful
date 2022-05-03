class AddColumnToFoodItems < ActiveRecord::Migration[5.2]
  def change
    add_column :food_items, :picture_url, :string
  end
end

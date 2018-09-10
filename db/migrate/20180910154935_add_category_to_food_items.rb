class AddCategoryToFoodItems < ActiveRecord::Migration[5.2]
  def change
    add_column :food_items, :category, :string
  end
end

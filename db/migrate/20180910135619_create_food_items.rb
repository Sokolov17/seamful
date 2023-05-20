class CreateFoodItems < ActiveRecord::Migration[5.2]
  def change
    create_table :food_items do |t|
      t.string :food_name
      t.string :food_url
      t.integer :price
      t.references :restaurant, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end

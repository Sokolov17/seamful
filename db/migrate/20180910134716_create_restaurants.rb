class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street_name
      t.string :city_name
      t.string :zipcode
      t.string :state
      t.string :phone_num
      t.string :cuisine
      t.string :price_range

      t.timestamps
    end
  end
end

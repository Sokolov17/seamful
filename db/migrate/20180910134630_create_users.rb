class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_name
      t.string :city_name
      t.string :zipcode
      t.string :state
      t.string :credit_card_num
      t.string :phone_num
      t.string :email

      t.timestamps
    end
  end
end

require 'faker'
# Restaurant.destroy_all
# User.destroy_all
# Review.destroy_all
# FoodItem.destroy_all
# Order.destroy_all
# Menuorder.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#RESTAURANT SEEDS
rest_1 = Restaurant.create(name: "Taverna Kyclades",
                          street_name: "288 1st Avenue",
                          city_name: "New York",
                          zipcode: "10009",
                          state: "NY",
                          phone_num: "212-432-0011",
                          cuisine: "Greek",
                          price_range: '$$')
rest_2 = Restaurant.create(name: "L'Artusi",
                          street_name: "228 West 10th Street",
                          city_name: "New York",
                          zipcode: "10014",
                          state: "NY",
                          phone_num: "212-255-5757",
                          cuisine: "Italian",
                          price_range: "$$$")
rest_3 = Restaurant.create(name: "Somtum Dur",
                          street_name: "85 Avenue A",
                          city_name: "New York",
                          zipcode: "10009",
                          state: "NY",
                          phone_num: "212-260-8570",
                          cuisine: "Thai",
                          price_range: "$$")
rest_4 = Restaurant.create(name: "The Marshall",
                          street_name: "628 10th Avenue",
                          city_name: "New York",
                          zipcode: "10036",
                          state: "NY",
                          phone_num: "212-582-6300",
                          cuisine: "New American",
                          price_range: "$$$")
rest_6 = Restaurant.create(name: "Black Iron Burger",
                          street_name: "540 E 5th Street",
                          city_name: "New York",
                          zipcode: "10009",
                          state: "NY",
                          phone_num: "212-677-6067",
                          cuisine: "New American",
                          price_range: "$")
rest_7 = Restaurant.create(name: "Adrienne's Pizzabar",
                          street_name: "54 Stone Street",
                          city_name: "New York",
                          zipcode: "10004",
                          state: "NY",
                          phone_num: "212-248-3838",
                          cuisine: "Pizza",
                          price_range: "$$")
rest_8 = Restaurant.create(name: "Ofrenda",
                          street_name: "113 7th Avenue South",
                          city_name: "New York",
                          zipcode: "10014",
                          state: "NY",
                          phone_num: "212-924-2305",
                          cuisine: "Mexican",
                          price_range: "$$")

p "created restaurants"

#USERS
20.times do User.create(first_name: Faker::Name.unique.first_name, last_name:Faker::Name.unique.last_name, street_name: Faker::Address.street_address, city_name: Faker::Address.city, zipcode: Faker::Address.zip_code, state: Faker::Address.state_abbr, credit_card_num: Faker::Bank.account_number(16), phone_num: Faker::PhoneNumber.phone_number, email: Faker::Internet.unique.email)
end
p "created users"

10.times do Review.create(restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id, rating: rand(1...5), content: Faker::RuPaul.quote)
end
p "created reviews"

30.times do FoodItem.create(food_name: Faker::Food.dish, price: rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id, description: Faker::Food.description)
end
p "created fooditems"

20.times do Order.create(restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id, menuorder_id: Menuorder.all.sample.id)
end
p "created orders"

20.times do Menuorder.create(order_id: Order.all.sample.id, food_item_id: FoodItem.all.sample.id)
end

p "created menuorder"

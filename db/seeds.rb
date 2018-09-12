require 'faker'
Menuorder.destroy_all
Order.destroy_all
FoodItem.destroy_all
Review.destroy_all
User.destroy_all
Restaurant.destroy_all

# RESTAURANT SEEDS
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
20.times do User.create(first_name: Faker::Name.unique.first_name, last_name:Faker::Name.unique.last_name, street_name: Faker::Address.street_address, city_name: Faker::Address.city, zipcode: Faker::Address.zip_code, state: Faker::Address.state_abbr, credit_card_num: Faker::Bank.account_number(16), phone_num: Faker::PhoneNumber.phone_number, email: Faker::Internet.unique.email, password_digest: "password")
end
p "created users"

70.times do Review.create(restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id, rating: rand(1...5), content: Faker::RuPaul.quote)
end
p "created reviews"

30.times do FoodItem.create(food_name: Faker::Food.dish, price: rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id, description: Faker::Food.description, category: "Mains")
end
p "created fooditems/mains"

puts "Appetizers"
  FoodItem.create(food_name: "Oktapodi", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Grilled Octapus", category: "Appetizers")
  FoodItem.create(food_name: "Tirokafteri", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Spicy Feta Dip", category: "Appetizers")
  FoodItem.create(food_name: "Sullivan County Deviled Eggs", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Lucky Dog Farm ramp pesto infused yolks, crispy duck prosciutto, fried carrots, micro scallion, garlic pesto & walnut pesto", category: "Appetizers")
  FoodItem.create(food_name: "Wood Oven Fired P.E.I Mussels", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Garlic, cream, shallots & upstate white wine with wood oven cheesy herbed bread sticks", category: "Appetizers")
  FoodItem.create(food_name: "Pork Meatballs", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Winter Sun Farms tomato sauce, Farm e-san cheese, wood oven cheesy herbed bread sticks", category: "Appetizers")
 puts " end Appetizers"
puts "Mains"
  FoodItem.create(food_name: "Goat Cheese & Herb Stuffed Bone-In Chicken Breast", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Greenane Family Farm chicken, sautéed local rainbow chard, Vermont Creamery goat cheese, white wine, pork lardons", category: "Mains")
  FoodItem.create(food_name: "Molasses Bourbon BBQ Pork Ribs", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Sugar Hill Farm Spare Ribs, local cabbage and kale slaw, Martha's Vineyard sea salt", category: "Mains")
  FoodItem.create(food_name: "Summer Root Raviolis", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Parsnip, turnip, and apple filled ravioli, cacio e pepe, crispy fried carrots", category: "Mains")
  FoodItem.create(food_name: "Paidaki", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Lamb Chops", category: "Mains")
  FoodItem.create(food_name: "Synagrida", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "red snapper", category: "Mains")
  puts " end mains"
  puts " desserts"
  FoodItem.create(food_name: "Browie", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "BIB Chocolate Brownie & Vanilla Ice Cream served with Caramel Syrup and Whipped Cream (contain nuts)", category: "Desserts")
  FoodItem.create(food_name: "CRANBERRY BRIOCHE PUDDING", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Served with Strawberry Ice Cream, Caramel Syrup and Whipped Cream", category: "Desserts")
  FoodItem.create(food_name: "Classic Creme Brulee", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "With seasonal berries", category: "Desserts")
  FoodItem.create(food_name: "Flourless Chocolate Epresso Cake", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "With cocoa powder and fresh raspberries", category: "Desserts")
  FoodItem.create(food_name: "Cheese Cake", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "With fresh berries", category: "Desserts")
  puts " end desserts"
  puts " drinks"
  FoodItem.create(food_name: "Coke", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Soda", category: "Drinks")
  FoodItem.create(food_name: "Diet Coke ", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Soda", category: "Drinks")
  FoodItem.create(food_name: "Sprite", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Soda", category: "Drinks")
  FoodItem.create(food_name: "Ice Tea", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Tea", category: "Drinks")
  FoodItem.create(food_name: "Root Beer", price:
  rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Soda", category: "Drinks")
  puts " end drinks"

100.times do Order.create(restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id)
end
p "created orders"

200.times do Menuorder.create(order_id: Order.all.sample.id, food_item_id: FoodItem.all.sample.id)
end

p "created menuorder"

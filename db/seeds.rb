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
rest_9 = Restaurant.create(name: "Sadelle's",
                          street_name: "463 W Broadway",
                          city_name: "New York",
                          zipcode: "10012",
                          state: "NY",
                          phone_num: "212-776-4926",
                          cuisine: "Bagels",
                          price_range: "$$")
rest_10 = Restaurant.create(name: "Bagel Boss",
                          street_name: "263 1st Avenue",
                          city_name: "New York",
                          zipcode: "10003",
                          state: "NY",
                          phone_num: "212-388-9292",
                          cuisine: "Bagels",
                          price_range: "$")
rest_11 = Restaurant.create(name: "Mission Chinese",
                          street_name: "171 E Broadway",
                          city_name: "New York",
                          zipcode: "10002",
                          state: "NY",
                          phone_num: "917-376-5660",
                          cuisine: "Chinese",
                          price_range: "$$")
rest_12 = Restaurant.create(name: "Cafe China",
                        street_name: "13 E 37th St",
                        city_name: "New York",
                        zipcode: "10016",
                        state: "NY",
                        phone_num: "212-213-2810",
                        cuisine: "Chinese",
                        price_range: "$$")
rest_13 = Restaurant.create(name: "Xi'an Famous Foods",
                        street_name: "45 Bayard St",
                        city_name: "New York",
                        zipcode: "10003",
                        state: "NY",
                        phone_num: "212-786-2068",
                        cuisine: "Chinese",
                        price_range: "$")
rest_14 = Restaurant.create(name: "by CHLOE",
                        street_name: "240 Lafayette St",
                        city_name: "New York",
                        zipcode: "10012",
                        state: "NY",
                        phone_num: "347-620-9620",
                        cuisine: "Health",
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
  FoodItem.create(food_name: "Kale Caesar", price:
  rand(7.0..11.00).round(2), restaurant_id: rest_14.id,
  description: "Shredded kale, shitake bacon, avocado, almond parm", category: "Appetizers")
  FoodItem.create(food_name: "Quinoa Taco", price:
  rand(7.0..9.00).round(2), restaurant_id: rest_14.id,
  description: "Chopped romaine, quinoa, spicy seitan chorizo, black beans, sweet corn, avocado", category: "Appetizers")
  FoodItem.create(food_name: "Smoothie Bowl", price:
  rand(9.0..11.00).round(2), restaurant_id: rest_14.id,
  description: "Granola, banana, apple, blueberry, goji berry, chia seeds, raw almond butter", category: "Appetizers")
  FoodItem.create(food_name: "Steamed Soup Buns", price:
  8, restaurant_id: rest_12.id,
  description: "Dim Sum - 4 count", category: "Appetizers")
  FoodItem.create(food_name: "Pork Sandwiches", price:
  9, restaurant_id: rest_12.id,
  description: "Dim Sum - 2 count", category: "Appetizers")
  FoodItem.create(food_name: "Scallion Pancakes", price:
  6, restaurant_id: rest_12.id,
  description: "Dim Sum - 6 count", category: "Appetizers")
  FoodItem.create(food_name: "Dan Dan Noodles", price:
  7, restaurant_id: rest_12.id,
  description: "Noodles with minced pork", category: "Appetizers")
  FoodItem.create(food_name: "Sashimi Trinity", price:
  19, restaurant_id: rest_11.id,
  description: "BONITO TATAKI, SALMON, HOKKAIDO SCALLOP. THAI TEA PONZU", category: "Appetizers")
  FoodItem.create(food_name: "Steak Tartare Lettuce Cups", price:
  19, restaurant_id: rest_11.id,
  description: "MISO CURED SALMON ROE, LIME & CRUNCHY ONION DRESSING", category: "Appetizers")
  FoodItem.create(food_name: "Breakfast Potatoes", price:
  rand(3.0..7.00).round(2), restaurant_id: rest_9.id,
  description: "Potatoes", category: "Appetizers")
  FoodItem.create(food_name: "Sadelle's Coleslaw", price:
  rand(3.0..7.00).round(2), restaurant_id: rest_9.id,
  description: "Coleslaw", category: "Appetizers")
  FoodItem.create(food_name: "Toast", price:
  rand(3.0..4.00).round(2), restaurant_id: rest_9.id,
  description: "Challah or Rye", category: "Appetizers")
  FoodItem.create(food_name: "Tuna Tartare", price:
  rand(4.0..8.00).round(2), restaurant_id: rest_9.id,
  description: "Freshly caught", category: "Appetizers")
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
  FoodItem.create(food_name: "The Guac Burger", price:
  rand(12.0..15.00).round(2), restaurant_id: rest_14.id,
  description: "black bean-quinoa sweet potato patty", category: "Mains")
  FoodItem.create(food_name: "Smashed Avocado Toast", price:
  rand(10.0..11.00).round(2), restaurant_id: rest_14.id,
  description: "seasonal veggie, almond parm, 7-grain toast", category: "Mains")
  FoodItem.create(food_name: "Mac N' Cheese", price:
  rand(10.0..11.00).round(2), restaurant_id: rest_14.id,
  description: "Sweet potato-cashew cheese sauce, shittake bacon, almond parm", category: "Mains")
  FoodItem.create(food_name: "Wonton Soup", price:
  8, restaurant_id: rest_12.id,
  description: "Pork", category: "Mains")
  FoodItem.create(food_name: "Sauteed Lobster", price:
  45, restaurant_id: rest_12.id,
  description: "Ginger and Scallion Style or Sichuan Style", category: "Mains")
  FoodItem.create(food_name: "Chungking Spicy Chicken", price:
  17, restaurant_id: rest_12.id,
  description: "Stir fried diced chicken with red chili peppers", category: "Mains")
  FoodItem.create(food_name: "Tea Smoked Duck", price:
  23, restaurant_id: rest_12.id,
  description: "Bone-in duck, browned outside & tender inside", category: "Mains")
  FoodItem.create(food_name: "Spicy Cumin Lamb", price:
  23, restaurant_id: rest_12.id,
  description: "with cumin, chili pepper, onion and cilantro", category: "Mains")
  FoodItem.create(food_name: "Chengdu Style Hot Peanut Noodles", price:
  14, restaurant_id: rest_11.id,
  description: "CHILI PICKLED LONG BEANS, SHREDDED RADISH & LIME LEAVES", category: "Mains")
  FoodItem.create(food_name: "Numbing Lamb Dan Dan Ramen", price:
  18, restaurant_id: rest_11.id,
  description: "WHITE SESAME & SICHUAN PEPPER BROTH, TREVISO", category: "Mains")
  FoodItem.create(food_name: "King Pao Pastrami", price:
  19, restaurant_id: rest_11.id,
  description: "HOME FRIES, TIANJIN CHILI, CELERY, PEANUTS", category: "Mains")
  FoodItem.create(food_name: "Thrice Cooked Bacon & Rice Cakes", price:
  19, restaurant_id: rest_11.id,
  description: "SHANGHAINESE RICE CAKES, BITTER MELON, SWEET TOFU SKIN", category: "Mains")
  FoodItem.create(food_name: "Stir Fried Radishes and Pork Jowl", price:
  16, restaurant_id: rest_11.id,
  description: "WATERCRESS, PICKLED WASABI STEMS, BLACK BEAN SAUCE", category: "Mains")
  FoodItem.create(food_name: "1 Dozen Bagels", price:
  14, restaurant_id: rest_10.id,
  description: "plain, sesame, pumpernickel, garlic, onion, poppy, everything, bialys, salt, diet, cinnamon raisin, kaiser rolls,challah rolls, egg, egg onion, egg everything, honey whole wheat,whole wheat sesame,whole wheat everything per dozen", category: "Mains")
  FoodItem.create(food_name: "1 Dozen Flagels", price:
  25, restaurant_id: rest_10.id,
  description: "plain, poppy, everything, sesame, sunflower", category: "Mains")
  FoodItem.create(food_name: "Vegetable Cream Cheese", price:
  5.50, restaurant_id: rest_10.id,
  description: "by the 1/2 lb", category: "Mains")
  FoodItem.create(food_name: "Lox Cream Cheese", price:
  5.50, restaurant_id: rest_10.id,
  description: "by the 1/2 lb", category: "Mains")
  FoodItem.create(food_name: "Cream Cheese", price:
  5.25, restaurant_id: rest_10.id,
  description: "by the 1/2 lb", category: "Mains")
  FoodItem.create(food_name: "Matzo Ball Soup", price:
  rand(4.0..8.00).round(2), restaurant_id: rest_9.id,
  description: "Homemade", category: "Mains")
  FoodItem.create(food_name: "Fish - Smoked Scottish", price:
  rand(4.0..8.00).round(2), restaurant_id: rest_9.id,
  description: "All selections served with a bagel, cucumber, onlion and capers. Bagels: plain, poppy, sesame, everything, salt &pepper.", category: "Mains")
  FoodItem.create(food_name: "Fish - House Salmon", price:
  rand(4.0..8.00).round(2), restaurant_id: rest_9.id,
  description: "All selections served with a bagel, cucumber, onlion and capers. Bagels: plain, poppy, sesame, everything, salt &pepper.", category: "Mains")
  FoodItem.create(food_name: "Fish - Sturgeon", price:
  rand(4.0..8.00).round(2), restaurant_id: rest_9.id,
  description: "All selections served with a bagel, cucumber, onlion and capers. Bagels: plain, poppy, sesame, everything, salt &pepper.", category: "Mains")
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
  FoodItem.create(food_name: "Pumpkin Donuts", price:
  8, restaurant_id: rest_12.id,
  description: "Pumpkin, sticky rice, red bean", category: "Dessert")
  FoodItem.create(food_name: "Green Tea Gelato", price:
  7, restaurant_id: rest_12.id,
  description: "with red bean mochi", category: "Dessert")
  FoodItem.create(food_name: "Coconut Sorbet", price:
  8, restaurant_id: rest_12.id,
  description: "sorbet", category: "Dessert")
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
  FoodItem.create(food_name: "Matcha Blueberry Muffin", price: 3.5, restaurant_id: rest_14.id,
  description: "Daily selection of freshly baked sweets made 100% in house", category: "Desserts")
  FoodItem.create(food_name: "Raspberry Tiramisu", price: 5.5, restaurant_id: rest_14.id,
  description: "Homemade", category: "Desserts")
puts " end desserts"
puts " drinks"
  FoodItem.create(food_name: "Daily Smoothie", price:
  7, restaurant_id: rest_14.id,
  description: "Fruit of the day", category: "Drinks")
  FoodItem.create(food_name: "Cold Pressed Juices", price:
  5, restaurant_id: rest_14.id,
  description: "12 oz", category: "Drinks")
  FoodItem.create(food_name: "Coke", price:
  rand(1.0..2.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Soda", category: "Drinks")
  FoodItem.create(food_name: "Diet Coke ", price:
  rand(1.0..2.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Soda", category: "Drinks")
  FoodItem.create(food_name: "Sprite", price:
  rand(1.0..2.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Soda", category: "Drinks")
  FoodItem.create(food_name: "Ice Tea", price:
  rand(1.0..2.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Tea", category: "Drinks")
  FoodItem.create(food_name: "Root Beer", price:
  rand(1.0..2.00).round(2), restaurant_id: Restaurant.all.sample.id,
  description: "Soda", category: "Drinks")
  puts " end drinks"

100.times do Order.create(restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id)
end
p "created orders"

200.times do Menuorder.create(order_id: Order.all.sample.id, food_item_id: FoodItem.all.sample.id)
end

p "created menuorder"

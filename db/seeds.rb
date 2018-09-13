require 'faker'
# Menuorder.destroy_all
# Order.destroy_all
# FoodItem.destroy_all
# Review.destroy_all
# User.destroy_all
# Restaurant.destroy_all
#
# # RESTAURANT SEEDS
# rest_1 = Restaurant.create(name: "Taverna Kyclades",
#                           street_name: "288 1st Avenue",
#                           city_name: "New York",
#                           zipcode: "10009",
#                           state: "NY",
#                           phone_num: "212-432-0011",
#                           cuisine: "Greek",
#                           price_range: '$$')
# rest_2 = Restaurant.create(name: "L'Artusi",
#                           street_name: "228 West 10th Street",
#                           city_name: "New York",
#                           zipcode: "10014",
#                           state: "NY",
#                           phone_num: "212-255-5757",
#                           cuisine: "Italian",
#                           price_range: "$$$")
# rest_3 = Restaurant.create(name: "Somtum Dur",
#                           street_name: "85 Avenue A",
#                           city_name: "New York",
#                           zipcode: "10009",
#                           state: "NY",
#                           phone_num: "212-260-8570",
#                           cuisine: "Thai",
#                           price_range: "$$")
# rest_4 = Restaurant.create(name: "The Marshall",
#                           street_name: "628 10th Avenue",
#                           city_name: "New York",
#                           zipcode: "10036",
#                           state: "NY",
#                           phone_num: "212-582-6300",
#                           cuisine: "American",
#                           price_range: "$$$")
# rest_6 = Restaurant.create(name: "Black Iron Burger",
#                           street_name: "540 E 5th Street",
#                           city_name: "New York",
#                           zipcode: "10009",
#                           state: "NY",
#                           phone_num: "212-677-6067",
#                           cuisine: "American",
#                           price_range: "$")
# rest_7 = Restaurant.create(name: "Adrienne's Pizzabar",
#                           street_name: "54 Stone Street",
#                           city_name: "New York",
#                           zipcode: "10004",
#                           state: "NY",
#                           phone_num: "212-248-3838",
#                           cuisine: "American",
#                           price_range: "$$")
# rest_8 = Restaurant.create(name: "Ofrenda",
#                           street_name: "113 7th Avenue South",
#                           city_name: "New York",
#                           zipcode: "10014",
#                           state: "NY",
#                           phone_num: "212-924-2305",
#                           cuisine: "Mexican",
#                           price_range: "$$")
# rest_9 = Restaurant.create(name: "Sadelle's",
#                           street_name: "463 W Broadway",
#                           city_name: "New York",
#                           zipcode: "10012",
#                           state: "NY",
#                           phone_num: "212-776-4926",
#                           cuisine: "Bagels",
#                           price_range: "$$")
# rest_10 = Restaurant.create(name: "Bagel Boss",
#                           street_name: "263 1st Avenue",
#                           city_name: "New York",
#                           zipcode: "10003",
#                           state: "NY",
#                           phone_num: "212-388-9292",
#                           cuisine: "Bagels",
#                           price_range: "$")
# rest_11 = Restaurant.create(name: "Mission Chinese",
#                           street_name: "171 E Broadway",
#                           city_name: "New York",
#                           zipcode: "10002",
#                           state: "NY",
#                           phone_num: "917-376-5660",
#                           cuisine: "Chinese",
#                           price_range: "$$")
# rest_12 = Restaurant.create(name: "Cafe China",
#                         street_name: "13 E 37th St",
#                         city_name: "New York",
#                         zipcode: "10016",
#                         state: "NY",
#                         phone_num: "212-213-2810",
#                         cuisine: "Chinese",
#                         price_range: "$$")
# rest_13 = Restaurant.create(name: "by CHLOE",
#                         street_name: "240 Lafayette St",
#                         city_name: "New York",
#                         zipcode: "10012",
#                         state: "NY",
#                         phone_num: "347-620-9620",
#                         cuisine: "Health",
#                         price_range: "$$")
# rest_14 = Restaurant.create(name: "Little Beet Table",
#                         street_name: "333 Park Ave S",
#                         city_name: "New York",
#                         zipcode: "10010",
#                         state: "NY",
#                         phone_num: "212-466-3330",
#                         cuisine: "Health",
#                         price_range: "$$$")
# rest_15 = Restaurant.create(name: "Cafe Clover",
#                         street_name: "10 Downing St.",
#                         city_name: "New York",
#                         zipcode: "10014",
#                         state: "NY",
#                         phone_num: "212-675-4350",
#                         cuisine: "Health",
#                         price_range: "$$$")
# rest_16 = Restaurant.create(name: "Lupe's East LA Kitchen",
#                         street_name: "110 6th Ave",
#                         city_name: "New York",
#                         zipcode: "10013",
#                         state: "NY",
#                         phone_num: "212-966-1326",
#                         cuisine: "Mexican",
#                         price_range: "$")
# rest_17 = Restaurant.create(name: "Empellon",
#                         street_name: "510 Madison Ave",
#                         city_name: "New York",
#                         zipcode: "10022",
#                         state: "NY",
#                         phone_num: "212-858-9365",
#                         cuisine: "Mexican",
#                         price_range: "$$$")
# greek1 = Restaurant.create(
#   name: "Kiki's",
#   street_name: "130 Division Street",
#   city_name: "New York",
#   zipcode: "10002",
#   state: "NY",
#   phone_num: "646-882-7052",
#   cuisine: "Greek",
#   price_range: "$$")
# greek2 = Restaurant.create(
#   name: "Village Taverna",
#   street_name: "81 University Place",
#   city_name: "New York",
#   zipcode: "10003",
#   state: "NY",
#   phone_num: "212-982-3457",
#   cuisine: "Greek",
#   price_range: "$$"
# )
# greek3 = Restaurant.create(
#   name: "Voula",
#   street_name: "9 Jones Street",
#   city_name: "New York",
#   zipcode: "10014",
#   state: "NY",
#   phone_num: "212-989-6500",
#   cuisine: "Greek",
#   price_range: "$$$$"
# )
# i1 = Restaurant.create(
#   name: "Antica",
#   street_name: "8 Stone Street",
#   city_name: "New York",
#   zipcode: "10004",
#   state: "NY",
#   phone_num: "646-439-2200",
#   cuisine: "Italian",
#   price_range: "$$"
# )
# i2 = Restaurant.create(
#   name: "Osteria della Pace",
#   street_name: "4 World Trade Center",
#   city_name: "New York",
#   zipcode: "10007",
#   state: "NY",
#   phone_num: "646-677-8580",
#   cuisine: "Italian",
#   price_range: "$$$"
# )
# i3 = Restaurant.create(
#   name: "ViceVersa",
#   street_name: "325 W 51st Street",
#   city_name: "New York",
#   zipcode: "10019",
#   state: "NY",
#   phone_num: "212-399-9291",
#   cuisine: "Italian",
#   price_range: "$$$"
# )
#
# p "created restaurants"
#
# ######################## FOOD ITEMS ###########################
# 75.times do FoodItem.create(food_name: Faker::Food.dish, price: rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id, description: Faker::Food.description, category: "Mains")
# end
# p "created fooditems/mains"
#
# puts "Appetizers"
# #ViceVersa
# FoodItem.create(
#   food_name: "Polpette di Vitello",
#   price: 14,
#   restaurant_id: Restaurant.find_by(name:"ViceVersa").id,
#   description: "Veal and mortadella meatballs",
#   category: "Appetizers"
# )
# FoodItem.create(
#   food_name: "Asparagi Verdi",
#   price: 12,
#   restaurant_id: Restaurant.find_by(name:"ViceVersa").id,
#   description: "Green spring asparagus, house made parmigiano",
#   category: "Appetizers"
# )
# FoodItem.create(
#   food_name: "Olive All'Ascolana",
#   price: 14,
#   restaurant_id: Restaurant.find_by(name:"ViceVersa").id,
#   description: "Crispy stuffed olives, 3 meats, pecornio, lemon zest",
#   category: "Appetizers"
# )
# #Osteria
# FoodItem.create(
#   food_name: "Gran Tagliere",
#   price: 38,
#   restaurant_id: Restaurant.find_by(name:"Osteria della Pace").id,
#   description: "Selection of cured meats and cheeses",
#   category: "Appetizer"
# )
# FoodItem.create(
#   food_name: "Carpaccio di Polipo",
#   price: 22,
#   restaurant_id: Restaurant.find_by(name:"Osteria della Pace").id,
#   description: "Octopus carpacio, arugula, dried cherry tomatoes, pistachio, and lemon dressing",
#   category: "Appetizer"
# )
# #Antica
# FoodItem.create(
#   food_name: "Calamari Fritti",
#   price: 18,
#   restaurant_id: Restaurant.find_by(name:"Antica").id,
#   description: "Crispy calamari with spicy tomato sauce",
#   category: "Appetizers"
# )
# FoodItem.create(
#   food_name: "Carpaccio de Salmone",
#   price: 17,
#   restaurant_id: Restaurant.find_by(name:"Antica").id,
#   description: "Fresh smoked salmon over arugla",
#   category: "Appetizers"
# )
# #Voula
# FoodItem.create(
#   food_name: "Elies",
#   price: 23,
#   restaurant_id: Restaurant.find_by(name:"Voula").id,
#   description: "Marinated olives",
#   category: "Appetizers"
# )
# FoodItem.create(
#   food_name: "Pantzaria",
#   price: 23,
#   restaurant_id: Restaurant.find_by(name:"Voula").id,
#   description: "red and yellow beets w/ garlic dip",
#   category: "Appetizers"
# )
# #VT
# FoodItem.create(
#   food_name: "Tirokafteri",
#   price: 10,
#   restaurant_id: Restaurant.find_by(name:"Village Taverna").id,
#   description: "Tangy puree of three Greek cheeses - seasoned",
#   category: "Appetizers",
# )
# FoodItem.create(
#   food_name: "Hummus",
#   price: 10,
#   restaurant_id: Restaurant.find_by(name:"Village Taverna").id,
#   description: "Pureed chick peas made with fresh herbs and olive oil",
#   category: "Appetizers"
# )
# #Kiki's
# FoodItem.create(
#   food_name: "Feta Toast",
#   price: 7,
#   restaurant_id: greek1.id,
#   description: "Our signature appetizer",
#   category: "Appetizer"
# )
# FoodItem.create(
#   food_name: "Greek Egg Toast",
#   price: 10,
#   restaurant_id: greek1.id,
#   description: "Our signature appetizer with a twist",
#   category: "Appetizer"
# )
# #Empellon
# FoodItem.create(
#   food_name: "Chopped Salad",
#   price: 17,
#   restaurant_id: Restaurant.find_by(name:"Empellon").id,
#   description: "Cabbage chopped with toasted fava bean dressing",
#   category: "Appetizers")
# FoodItem.create(
#   food_name: "Tamal",
#   price: 17,
#   restaurant_id: Restaurant.find_by(name:"Empellon").id,
#   description: "Sticky Rice Tamal with red chile duck",
#   category: "Appetizers")
# FoodItem.create(
#   food_name: "Fig & Tomato Salad",
#   price: 18,
#   restaurant_id: Restaurant.find_by(name:"Empellon").id,
#   description: "with queso fresco",
#   category: "Appetizers")
# #Lupe's
# FoodItem.create(
#   food_name: "Quesadilla",
#   price: 7,
#   restaurant_id: Restaurant.find_by(name:"Lupe's East LA Kitchen").id,
#   description: "Cheese and jalapeno salsa in a flour tortilla grilled",
#   category: "Appetizers")
# FoodItem.create(
#   food_name: "Taquitos",
#   price: 7,
#   restaurant_id: Restaurant.find_by(name:"Lupe's East LA Kitchen").id,
#   description: "Beef or chicken rolled in fried corn tortillas served with guacamole",
#   category: "Appetizers")
# #Cafe Clover
# FoodItem.create(
#   food_name: "Tomato Gazpacho",
#   price: 12,
#   restaurant_id: Restaurant.find_by(name:"Cafe Clover").id,
#   description: "Baby heirlooms and fine herbs",
#   category: "Appetizers")
# FoodItem.create(
#   food_name: "Loaded Sweet Potato",
#   price: 14,
#   restaurant_id: Restaurant.find_by(name:"Cafe Clover").id,
#   description: "Maitake, brussel sprouts, cauliflower and green chili aioli",
#   category: "Appetizers")
# FoodItem.create(
#   food_name: "Stuffed Avocado",
#   price: 22,
#   restaurant_id: Restaurant.find_by(name:"Cafe Clover").id,
#   description: "Peekytoe crab salad, spring greens, and lemon vinagrette",
#   category: "Appetizers")
# #Little Beet
# FoodItem.create(
#   food_name: "Assorted Olives",
#   price: 7,
#   restaurant_id: Restaurant.find_by(name:"Little Beet Table").id,
#   description: "with orange and red pepper flakes",
#   category: "Appetizers")
# FoodItem.create(
#   food_name: "Cauliflower Hummus",
#   price: 15,
#   restaurant_id: Restaurant.find_by(name:"Little Beet Table").id,
#   description: "Seeds, red onion, dill, and grilled bread",
#   category: "Appetizers")
# FoodItem.create(
#   food_name: "Guacamole",
#   price: 13,
#   restaurant_id: Restaurant.find_by(name:"Little Beet Table").id,
#   description: "Mango, cilantro, lime and corn tostadas",
#   category: "Appetizers")
# #byCHLOE
# FoodItem.create(
#   food_name: "Kale Caesar",
#   price: rand(7.0..11.00).round(2),
#   restaurant_id: Restaurant.find_by(name:"by CHLOE").id,
#   description: "Shredded kale, shitake bacon, avocado, almond parm",
#   category: "Appetizers")
# FoodItem.create(
#   food_name: "Quinoa Taco",
#   price: rand(7.0..9.00).round(2),
#   restaurant_id: Restaurant.find_by(name:"by CHLOE").id,
#   description: "Chopped romaine, quinoa, spicy seitan chorizo, black beans, sweet corn, avocado",
#   category: "Appetizers")
# FoodItem.create(
#   food_name: "Smoothie Bowl",
#   price: rand(9.0..11.00).round(2),
#   restaurant_id: Restaurant.find_by(name:"by CHLOE").id,
#   description: "Granola, banana, apple, blueberry, goji berry, chia seeds, raw almond butter",
#   category: "Appetizers")
# #Cafe China
# FoodItem.create(
#   food_name: "Steamed Soup Buns",
#   price: 8,
#   restaurant_id: Restaurant.find_by(name:"Cafe China").id,
#   description: "Dim Sum, 4 count",
#   category: "Appetizers")
# FoodItem.create(
#   food_name: "Pork Sandwiches",
#   price: 9,
#   restaurant_id: Restaurant.find_by(name:"Cafe China").id,
#   description: "Dim Sum, 2 count",
#   category: "Appetizers")
# FoodItem.create(
#   food_name: "Scallion Pancakes",
#   price: 6,
#   restaurant_id: Restaurant.find_by(name:"Cafe China").id,
#   description: "Dim Sum, 6 count",
#   category: "Appetizers")
# FoodItem.create(
#   food_name: "Dan Dan Noodles",
#   price: 7,
#   restaurant_id: Restaurant.find_by(name:"Cafe China").id,
#   description: "Noodles with minced pork",
#   category: "Appetizers")
# #Mission Chinese
# FoodItem.create(
#   food_name: "Sashimi Trinity",
#   price: 19,
#   restaurant_id: Restaurant.find_by(name:"Mission Chinese").id,
#   description: "BONITO TATAKI, SALMON, HOKKAIDO SCALLOP. THAI TEA PONZU",
#   category: "Appetizers")
# FoodItem.create(
#   food_name: "Steak Tartare Lettuce Cups",
#   price: 19,
#   restaurant_id: Restaurant.find_by(name:"Mission Chinese").id,
#   description: "MISO CURED SALMON ROE, LIME & CRUNCHY ONION DRESSING",
#   category: "Appetizers")
# FoodItem.create(food_name: "Breakfast Potatoes", price:
#     rand(3.0..7.00).round(2), restaurant_id: Restaurant.find_by(name:"Sadelle's").id,
#     description: "Potatoes", category: "Appetizers")
# FoodItem.create(food_name: "Sadelle's Coleslaw", price:
#     rand(3.0..7.00).round(2), restaurant_id: Restaurant.find_by(name:"Sadelle's").id,
#     description: "Coleslaw", category: "Appetizers")
# FoodItem.create(food_name: "Toast", price:
#     rand(3.0..4.00).round(2), restaurant_id: Restaurant.find_by(name:"Sadelle's").id,
#     description: "Challah or Rye", category: "Appetizers")
# FoodItem.create(food_name: "Tuna Tartare", price:
#     rand(4.0..8.00).round(2), restaurant_id: Restaurant.find_by(name:"Sadelle's").id,
#     description: "Freshly caught", category: "Appetizers")
#   FoodItem.create(food_name: "Oktapodi", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Grilled Octapus", category: "Appetizers")
#   FoodItem.create(food_name: "Tirokafteri", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Spicy Feta Dip", category: "Appetizers")
#   FoodItem.create(food_name: "Sullivan County Deviled Eggs", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Lucky Dog Farm ramp pesto infused yolks, crispy duck prosciutto, fried carrots, micro scallion, garlic pesto & walnut pesto", category: "Appetizers")
#   FoodItem.create(food_name: "Wood Oven Fired P.E.I Mussels", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Garlic, cream, shallots & upstate white wine with wood oven cheesy herbed bread sticks", category: "Appetizers")
#   FoodItem.create(food_name: "Pork Meatballs", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Winter Sun Farms tomato sauce, Farm e-san cheese, wood oven cheesy herbed bread sticks", category: "Appetizers")
# puts " end Appetizers"
#
# puts "Mains"
# #ViceVersa
# FoodItem.create(
#   food_name: "Lasagna Verde alla Bolognese",
#   price: 27,
#   restaurant_id: Restaurant.find_by(name:"ViceVersa").id,
#   description: "Spinache lasagna, 3 meats ragu bolognese",
#   category: "Mains"
# )
# FoodItem.create(
#   food_name: "Ravioli di Mare Al Ragu",
#   price: 25,
#   restaurant_id: Restaurant.find_by(name:"ViceVersa").id,
#   description: "Squid ink seafood ravioli",
#   category: "Mains"
# )
# FoodItem.create(
#   food_name: "Bisteca alla griglia",
#   price: 38,
#   restaurant_id: Restaurant.find_by(name:"ViceVersa").id,
#   description: "12 oz. in house dry aged strip loin steak",
#   category: "Mains"
# )
# #Osteria
# FoodItem.create(
#   food_name: "Gnocchi alla Sorentina",
#   price: 29,
#   restaurant_id: Restaurant.find_by(name:"Osteria della Pace").id,
#   description: "Potato gnocchi, pizzutello tomato, fresh burrata",
#   category: "Mains"
# )
# FoodItem.create(
#   food_name: "Chitarra Gamberi e Zucchine",
#   price: 27,
#   restaurant_id: Restaurant.find_by(name:"Osteria della Pace").id,
#   description: "Afeltra spaghetti chitarra, shrimp, zucchini, lemon breadcrumbs",
#   category: "Mains"
# )
# FoodItem.create(
#   food_name: "Orata al Forno",
#   price: 37,
#   restaurant_id: Restaurant.find_by(name:"Osteria della Pace").id,
#   description: "Oven roasted cod, mussels, clams, cherry tomatoes, basil, white wine",
#   category: "Mains"
# )
# #Antica
# FoodItem.create(
#   food_name: "Penne Arrabbiata",
#   price: 27,
#   restaurant_id: Restaurant.find_by(name:"Antica").id,
#   description: "Penne with spicy tomato sauce",
#   category: "Mains"
# )
# FoodItem.create(
#   food_name: "Fettucini Alla Sorentina",
#   price: 29,
#   restaurant_id: Restaurant.find_by(name:"Antica").id,
#   description: "Ribbon pasta with mozzarella",
#   category: "Mains"
# )
# FoodItem.create(
#   food_name: "Ravioli of the Day",
#   price: 28,
#   restaurant_id: Restaurant.find_by(name:"Antica").id,
#   description: "See Title",
#   category: "Mains"
# )
# #Voula
# FoodItem.create(
#   food_name: "Red Snapper",
#   price: 34,
#   restaurant_id: Restaurant.find_by(name:"Voula").id,
#   description: "Seared snapper with lemon",
#   category: "Mains"
# )
# FoodItem.create(
#   food_name: "Seafood Yiouvetsi",
#   price: 38,
#   restaurant_id: Restaurant.find_by(name:"Voula").id,
#   description: "Shrimp and scallops w/ orzo in tomato sauce and feta",
#   category: "Mains"
# )
# FoodItem.create(
#   food_name: "Lamb Kleftiko",
#   price: 35,
#   restaurant_id: Restaurant.find_by(name:"Voula").id,
#   description: "Slow cooked lamb",
#   category: "Mains"
# )
# FoodItem.create(
#   food_name: "Grilled Loukaniko",
#   price: 29,
#   restaurant_id: Restaurant.find_by(name:"Voula").id,
#   description: "Traditional Greek sausage",
#   category: "Mains"
# )
# #VT
# FoodItem.create(
#   food_name: "Prasini",
#   price: 13,
#   restaurant_id: Restaurant.find_by(name:"Village Taverna").id,
#   description: "Chopped romaine lettuce, olives, feta, and green peppers",
#   category: "Mains"
# )
# FoodItem.create(
#   food_name: "Mousaka",
#   price: 21,
#   restaurant_id: Restaurant.find_by(name:"Village Taverna").id,
#   description: "Oven baked casserole with zucchini and ground beef",
#   category: "Mains"
# )
# #Kiki's
# FoodItem.create(
#   food_name: "Spanakopita",
#   price: 23,
#   restaurant_id: Restaurant.find_by(name:"Kiki's").id,
#   description: "Spinach pie",
#   category: "Mains"
# )
# FoodItem.create(
#   food_name: "Grilled Octopus",
#   price: 18,
#   restaurant_id: Restaurant.find_by(name:"Kiki's").id,
#   description: "Made with our famous Kiki's seasoning",
#   category: "Mains"
# )
# FoodItem.create(
#   food_name: "Moussaka",
#   price: 23,
#   restaurant_id: Restaurant.find_by(name:"Kiki's").id,
#   description: "Eggplant and minced meat",
#   category: "Mains"
# )
# #Empellon
# FoodItem.create(
#   food_name: "Sea Bream",
#   price: 36,
#   restaurant_id: Restaurant.find_by(name:"Empellon").id,
#   description: "best shared. Sea bream with chilaquiles verdes",
#   category: "Mains")
# FoodItem.create(
#   food_name: "Crisp Pork Belly",
#   price: 36,
#   restaurant_id: Restaurant.find_by(name:"Empellon").id,
#   description: "with chicharron and herbs",
#   category: "Mains")
# FoodItem.create(
#   food_name: "Short Rib Confit",
#   price: 42,
#   restaurant_id: Restaurant.find_by(name:"Empellon").id,
#   description: "with Picadillo Garnish",
#   category: "Mains")
#
# #Lupe's
# FoodItem.create(
#   food_name: "Super Burrito",
#   price: 14,
#   restaurant_id: Restaurant.find_by(name:"Lupe's East LA Kitchen").id,
#   description: "Cheese and jalapeno salsa in a flour tortilla grilled",
#   category: "Mains")
# FoodItem.create(
#   food_name: "Tacos de Carnitas",
#   price: 13,
#   restaurant_id: Restaurant.find_by(name:"Lupe's East LA Kitchen").id,
#   description: "Roast pork tacos served with pico de gallo and jalapeno-cilantro salsa",
#   category: "Mains")
# FoodItem.create(
#   food_name: "Camarones Nortenos",
#   price: 6,
#   restaurant_id: Restaurant.find_by(name:"Lupe's East LA Kitchen").id,
#   description: "(Fajitas) shrimp grilled with onions, poblano chilis and tomatoes served with tortillas",
#   category: "Mains")
#
# #Cave Clover
# FoodItem.create(
#   food_name: "Sprouted Rye Berry Bowl",
#   price: 16,
#   restaurant_id: Restaurant.find_by(name:"Cafe Clover").id,
#   description: "Roasted butternut squash, wax beans, pumpkin seeds sage vinaigrette",
#   category: "Mains")
# FoodItem.create(
#   food_name: "Clover Salad",
#   price: 17,
#   restaurant_id: Restaurant.find_by(name:"Cafe Clover").id,
#   description: "Farmers greens, zucchini, sweet potato, avocado, quinoa",
#   category: "Mains")
# FoodItem.create(
#   food_name: "Chopped Salad",
#   price: 17,
#   restaurant_id: Restaurant.find_by(name:"Cafe Clover").id,
#   description: "Mixed baby kale, baby lettuce, marinated mushrooms, sunflower kernels, tomatoes, cauliflower and cucumbers",
#   category: "Mains")
# FoodItem.create(
#   food_name: "Salad Nicoise",
#   price: 19,
#   restaurant_id: Restaurant.find_by(name:"Cafe Clover").id,
#   description: "Ortiz tuna, organic egg,baby carrots, olives, beets, and basil hemp seed vinagrette",
#   category: "Mains")
# #Little Beet
# FoodItem.create(
#   food_name: "Roasted Shrimp Salad",
#   price: 22,
#   restaurant_id: Restaurant.find_by(name:"Little Beet Table").id,
#   description: "Red oak lettuce, quinoa, avocado, spiced almond, golden raisin and white balsamic",
#   category: "Mains")
# FoodItem.create(
#   food_name: "Sesame-Chili Chicken Salad",
#   price: 20,
#   restaurant_id: Restaurant.find_by(name:"Little Beet Table").id,
#   description: "Market greens, apple, carrot, daikon radish, cashew, and togarashi",
#   category: "Mains")
# FoodItem.create(
#   food_name: "Rigatoni",
#   price: 22,
#   restaurant_id: Restaurant.find_by(name:"Little Beet Table").id,
#   description: "Summer pesto, zucchini, roasted wild mushroom and parmesan",
#   category: "Mains")
# FoodItem.create(
#   food_name: "Grilled Cauliflower Steam",
#   price: 21,
#   restaurant_id: Restaurant.find_by(name:"Little Beet Table").id,
#   description: "Green curry, maitake mushroom, salad of market herbs, apple and almond",
#   category: "Mains")
#
# FoodItem.create(food_name: "The Guac Burger", price:
#   rand(12.0..15.00).round(2), restaurant_id: Restaurant.find_by(name:"by CHLOE"),
#   description: "black bean-quinoa sweet potato patty", category: "Mains")
#   FoodItem.create(food_name: "Smashed Avocado Toast", price:
#   rand(10.0..11.00).round(2), restaurant_id: Restaurant.find_by(name:"by CHLOE"),
#   description: "seasonal veggie, almond parm, 7-grain toast", category: "Mains")
#   FoodItem.create(food_name: "Mac N' Cheese", price:
#   rand(10.0..11.00).round(2), restaurant_id: Restaurant.find_by(name:"by CHLOE"),
#   description: "Sweet potato-cashew cheese sauce, shittake bacon, almond parm", category: "Mains")
#   FoodItem.create(food_name: "Wonton Soup", price:
#   8, restaurant_id: Restaurant.find_by(name:"Cafe China").id,
#   description: "Pork", category: "Mains")
#   FoodItem.create(food_name: "Sauteed Lobster", price:
#   45, restaurant_id: Restaurant.find_by(name:"Cafe China").id,
#   description: "Ginger and Scallion Style or Sichuan Style", category: "Mains")
#   FoodItem.create(food_name: "Chungking Spicy Chicken", price:
#   17, restaurant_id: Restaurant.find_by(name:"Cafe China").id,
#   description: "Stir fried diced chicken with red chili peppers", category: "Mains")
#   FoodItem.create(food_name: "Tea Smoked Duck", price:
#   23, restaurant_id: Restaurant.find_by(name:"Cafe China").id,
#   description: "Bone-in duck, browned outside & tender inside", category: "Mains")
#   FoodItem.create(food_name: "Spicy Cumin Lamb", price:
#   23, restaurant_id: Restaurant.find_by(name:"Cafe China").id,
#   description: "with cumin, chili pepper, onion and cilantro", category: "Mains")
#   FoodItem.create(food_name: "Chengdu Style Hot Peanut Noodles", price:
#   14, restaurant_id: Restaurant.find_by(name:"Mission Chinese").id,
#   description: "CHILI PICKLED LONG BEANS, SHREDDED RADISH & LIME LEAVES", category: "Mains")
#   FoodItem.create(food_name: "Numbing Lamb Dan Dan Ramen", price:
#   18, restaurant_id: Restaurant.find_by(name:"Mission Chinese").id,
#   description: "WHITE SESAME & SICHUAN PEPPER BROTH, TREVISO", category: "Mains")
#   FoodItem.create(food_name: "King Pao Pastrami", price:
#   19, restaurant_id: Restaurant.find_by(name:"Mission Chinese").id,
#   description: "HOME FRIES, TIANJIN CHILI, CELERY, PEANUTS", category: "Mains")
#   FoodItem.create(food_name: "Thrice Cooked Bacon & Rice Cakes", price:
#   19, restaurant_id: Restaurant.find_by(name:"Mission Chinese").id,
#   description: "SHANGHAINESE RICE CAKES, BITTER MELON, SWEET TOFU SKIN", category: "Mains")
#   FoodItem.create(food_name: "Stir Fried Radishes and Pork Jowl", price:
#   16, restaurant_id: Restaurant.find_by(name:"Mission Chinese").id,
#   description: "WATERCRESS, PICKLED WASABI STEMS, BLACK BEAN SAUCE", category: "Mains")
#   FoodItem.create(food_name: "1 Dozen Bagels", price:
#   14, restaurant_id: rest_10.id,
#   description: "plain, sesame, pumpernickel, garlic, onion, poppy, everything, bialys, salt, diet, cinnamon raisin, kaiser rolls,challah rolls, egg, egg onion, egg everything, honey whole wheat,whole wheat sesame,whole wheat everything per dozen", category: "Mains")
#   FoodItem.create(food_name: "1 Dozen Flagels", price:
#   25, restaurant_id: rest_10.id,
#   description: "plain, poppy, everything, sesame, sunflower", category: "Mains")
#   FoodItem.create(food_name: "Vegetable Cream Cheese", price:
#   5.50, restaurant_id: rest_10.id,
#   description: "by the 1/2 lb", category: "Mains")
#   FoodItem.create(food_name: "Lox Cream Cheese", price:
#   5.50, restaurant_id: rest_10.id,
#   description: "by the 1/2 lb", category: "Mains")
#   FoodItem.create(food_name: "Cream Cheese", price:
#   5.25, restaurant_id: rest_10.id,
#   description: "by the 1/2 lb", category: "Mains")
#   FoodItem.create(food_name: "Matzo Ball Soup", price:
#   rand(4.0..8.00).round(2), restaurant_id: Restaurant.find_by(name:"Sadelle's").id,
#   description: "Homemade", category: "Mains")
#   FoodItem.create(food_name: "Fish - Smoked Scottish", price:
#   rand(4.0..8.00).round(2), restaurant_id: Restaurant.find_by(name:"Sadelle's").id,
#   description: "All selections served with a bagel, cucumber, onlion and capers. Bagels: plain, poppy, sesame, everything, salt &pepper.", category: "Mains")
#   FoodItem.create(food_name: "Fish - House Salmon", price:
#   rand(4.0..8.00).round(2), restaurant_id: Restaurant.find_by(name:"Sadelle's").id,
#   description: "All selections served with a bagel, cucumber, onlion and capers. Bagels: plain, poppy, sesame, everything, salt &pepper.", category: "Mains")
#   FoodItem.create(food_name: "Fish - Sturgeon", price:
#   rand(4.0..8.00).round(2), restaurant_id: Restaurant.find_by(name:"Sadelle's").id,
#   description: "All selections served with a bagel, cucumber, onlion and capers. Bagels: plain, poppy, sesame, everything, salt &pepper.", category: "Mains")
#   FoodItem.create(food_name: "Goat Cheese & Herb Stuffed Bone-In Chicken Breast", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Greenane Family Farm chicken, sautéed local rainbow chard, Vermont Creamery goat cheese, white wine, pork lardons", category: "Mains")
#   FoodItem.create(food_name: "Molasses Bourbon BBQ Pork Ribs", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Sugar Hill Farm Spare Ribs, local cabbage and kale slaw, Martha's Vineyard sea salt", category: "Mains")
#   FoodItem.create(food_name: "Summer Root Raviolis", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Parsnip, turnip, and apple filled ravioli, cacio e pepe, crispy fried carrots", category: "Mains")
#   FoodItem.create(food_name: "Paidaki", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Lamb Chops", category: "Mains")
#   FoodItem.create(food_name: "Synagrida", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "red snapper", category: "Mains")
# puts " end mains"
#
# puts " desserts"
# #Osteria
# FoodItem.create(
#   food_name: "Cioccolato",
#   price: 12,
#   restaurant_id: Restaurant.find_by(name:"Osteria della Pace").id,
#   description: "Flourless dark chocolate cake with coconut flakes",
#   category: "Desserts"
# )
# FoodItem.create(
#   food_name: "5 Mignon",
#   price: 12,
#   restaurant_id: Restaurant.find_by(name:"Osteria della Pace").id,
#   description: "Daily selection of pasticceria mignon",
#   category: "Desserts"
# )
# #Voula
# FoodItem.create(
#   food_name: "Kormos",
#   price: 12,
#   restaurant_id: Restaurant.find_by(name:"Voula").id,
#   description: "Dark chocolate ganache log w/ crumbled Greek cookies",
#   category: "Desserts"
# )
#
# #VT
# FoodItem.create(
#   food_name: "Galaktobouriko",
#   price: 8,
#   restaurant_id: Restaurant.find_by(name:"Village Taverna").id,
#   description: "Cream custard on flaky filo - topped with lemon",
#   category: "Desserts"
# )
# #Kikis
# FoodItem.create(
#   food_name: "Baklava",
#   price: 5,
#   restaurant_id: Restaurant.find_by(name:"Kiki's").id,
#   description: "Sweet pastry with layers of filo",
#   category: "Desserts"
# )
# FoodItem.create(
#   food_name: "Mexican Chocolate Ice Cream Sandwich",
#   price: 8,
#   restaurant_id: Restaurant.find_by(name:"Empellon").id,
#   description: "homemade",
#   category: "Desserts")
# FoodItem.create(
#   food_name: "Pineapple",
#   price: 16,
#   restaurant_id: Restaurant.find_by(name:"Empellon").id,
#   description: "with Piloncillo, Bee Pollen and Chamomile Ice Cream",
#   category: "Desserts")
# FoodItem.create(
#   food_name: "Tequila Barrel Ice Cream",
#   price: 16,
#   restaurant_id: Restaurant.find_by(name:"Empellon").id,
#   description: "with Añejo Tequila Caramel",
#   category: "Desserts")
# #Lupe's
# FoodItem.create(
#   food_name: "Coconut / Vanilla Flan",
#   price: 4,
#   restaurant_id: Restaurant.find_by(name:"Lupe's East LA Kitchen").id,
#   description: "Flan",
#   category: "Desserts")
# FoodItem.create(
#   food_name: "Polvorones",
#   price: 2,
#   restaurant_id: Restaurant.find_by(name:"Lupe's East LA Kitchen").id,
#   description: "Mexican wedding cookies",
#   category: "Desserts")
# #Cafe Clover
# FoodItem.create(
#   food_name: "Selection of Warm Cookies",
#   price: 8,
#   restaurant_id: Restaurant.find_by(name:"Cafe Clover").id,
#   description: "Homemade!",
#   category: "Desserts")
# FoodItem.create(food_name: "Pumpkin Donuts", price:
#   8, restaurant_id: Restaurant.find_by(name:"Cafe China").id,
#   description: "Pumpkin, sticky rice, red bean", category: "Dessert")
#   FoodItem.create(food_name: "Green Tea Gelato", price:
#   7, restaurant_id: Restaurant.find_by(name:"Cafe China").id,
#   description: "with red bean mochi", category: "Dessert")
#   FoodItem.create(food_name: "Coconut Sorbet", price:
#   8, restaurant_id: Restaurant.find_by(name:"Cafe China").id,
#   description: "sorbet", category: "Dessert")
#   FoodItem.create(food_name: "Matcha Blueberry Muffin", price: 3.5, restaurant_id: Restaurant.find_by(name:"by CHLOE"),
#   description: "Daily selection of freshly baked sweets made 100% in house", category: "Desserts")
#   FoodItem.create(food_name: "Raspberry Tiramisu", price: 5.5, restaurant_id: Restaurant.find_by(name:"by CHLOE"),
#   description: "Homemade", category: "Desserts")
#   FoodItem.create(food_name: "Brownie", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "BIB Chocolate Brownie & Vanilla Ice Cream served with Caramel Syrup and Whipped Cream (contain nuts)", category: "Desserts")
#   FoodItem.create(food_name: "CRANBERRY BRIOCHE PUDDING", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Served with Strawberry Ice Cream, Caramel Syrup and Whipped Cream", category: "Desserts")
#   FoodItem.create(food_name: "Classic Creme Brulee", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "With seasonal berries", category: "Desserts")
#   FoodItem.create(food_name: "Flourless Chocolate Epresso Cake", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "With cocoa powder and fresh raspberries", category: "Desserts")
#   FoodItem.create(food_name: "Cheese Cake", price:
#   rand(10.0..30.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "With fresh berries", category: "Desserts")
# puts " end desserts"
#
# puts " drinks"
# #ViceVersa
# FoodItem.create(
#   food_name: "Illy Coffee",
#   price: 4,
#   restaurant_id: Restaurant.find_by(name:"ViceVersa").id,
#   description: "16oz.",
#   category: "Drinks"
# )
# FoodItem.create(
#   food_name: "Espresso",
#   price: 7,
#   restaurant_id: Restaurant.find_by(name:"ViceVersa").id,
#   description: "",
#   category: "Drinks"
# )
# #Antica
# FoodItem.create(
#   food_name: "Espresso",
#   price: 5,
#   restaurant_id: Restaurant.find_by(name:"Antica").id,
#   description: "A fresh shot pulled into a to go cup",
#   category: "Drinks"
# )
# #Voula
# FoodItem.create(
#   food_name: "Greek Coffee",
#   price: 8,
#   restaurant_id: Restaurant.find_by(name:"Voula").id,
#   description: "CAFFEINE",
#   category: "Drinks"
# )
# #VT
# FoodItem.create(
#   food_name: "Green Tea",
#   price: 3,
#   restaurant_id: Restaurant.find_by(name:"Village Taverna").id,
#   description: "Caution: Hot!",
#   category: "Drinks"
# )
# FoodItem.create(
#   food_name: "Souroti",
#   price: 6,
#   restaurant_id: Restaurant.find_by(name:"Village Taverna").id,
#   description: "750 ml. of sparkling water",
#   category: "Drinks"
# )
# #Kiki's
# FoodItem.create(
#   food_name: "Turkish Coffee",
#   price: 6,
#   restaurant_id: Restaurant.find_by(name:"Kiki's").id,
#   description: "We realize this isn't Greek.",
#   category: "Drinks"
# )
# #Empellon
# FoodItem.create(
#   food_name: "Arnold Palmer",
#   price: 8,
#   restaurant_id: Restaurant.find_by(name:"Empellon").id,
#   description: "Black and Damiana Teas with Fresh Lemon",
#   category: "Drinks")
# FoodItem.create(
#   food_name: "Hibiscus Lemonade",
#   price: 8,
#   restaurant_id: Restaurant.find_by(name:"Empellon").id,
#   description: "Hibiscus Tea with Fresh Lemon",
#   category: "Drinks")
# #Lupe's
# FoodItem.create(
#   food_name: "Cafe Con Leche",
#   price: 3,
#   restaurant_id: Restaurant.find_by(name:"Lupe's East LA Kitchen").id,
#   description: "Coffee with milk",
#   category: "Drinks")
# FoodItem.create(
#   food_name: "Mexican Hot Chocolate",
#   price: 4,
#   restaurant_id: Restaurant.find_by(name:"Lupe's East LA Kitchen").id,
#   description: "Mexican hot chocolate",
#   category: "Desserts")
# #Cafe Clover
# FoodItem.create(
#   food_name: "Tumeric Limeade",
#   price: 7,
#   restaurant_id: Restaurant.find_by(name:"Cafe Clover").id,
#   description: "An anti-inflammatory, immunity boosting power house made with filtered water, lime juice, tumeric and raw honey",
#   category: "Drinks")
# FoodItem.create(
#   food_name: "Activated Charcoal Lemonade",
#   price: 7,
#   restaurant_id: Restaurant.find_by(name:"Cafe Clover").id,
#   description: "System detoxifying activated charcoal made with filtered water, lemon juice, raw honey and activated charcoal",
#   category: "Drinks")
# FoodItem.create(
#   food_name: "Butterfly Lemonade",
#   price: 7,
#   restaurant_id: Restaurant.find_by(name:"Cafe Clover").id,
#   description: "Butterfly pea flower, clover honey and lemon",
#   category: "Drinks")
# #byCHLOE
# FoodItem.create(food_name: "Daily Smoothie", price:
#   7, restaurant_id: rest_14.id,
#   description: "Fruit of the day", category: "Drinks")
#   FoodItem.create(food_name: "Cold Pressed Juices", price:
#   5, restaurant_id: rest_14.id,
#   description: "12 oz", category: "Drinks")
#   FoodItem.create(food_name: "Coke", price:
#   rand(1.0..2.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Soda", category: "Drinks")
#   FoodItem.create(food_name: "Diet Coke ", price:
#   rand(1.0..2.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Soda", category: "Drinks")
#   FoodItem.create(food_name: "Sprite", price:
#   rand(1.0..2.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Soda", category: "Drinks")
#   FoodItem.create(food_name: "Ice Tea", price:
#   rand(1.0..2.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Tea", category: "Drinks")
#   FoodItem.create(food_name: "Root Beer", price:
#   rand(1.0..2.00).round(2), restaurant_id: Restaurant.all.sample.id,
#   description: "Soda", category: "Drinks")
#   puts " end drinks"

############################## USERS ############################
20.times do User.create(first_name: Faker::Name.unique.first_name, last_name:Faker::Name.unique.last_name, street_name: Faker::Address.street_address, city_name: Faker::Address.city, zipcode: Faker::Address.zip_code, state: Faker::Address.state_abbr, credit_card_num: Faker::Bank.account_number(17), phone_num: Faker::PhoneNumber.phone_number, email: Faker::Internet.unique.email, password_digest: "password")
end
p "created users"


########### ORDERS ##################
99.times do Order.create(restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id)
end
p "created orders"

##################### MENUORDERS ##########################
99.times do Menuorder.create(order_id: Order.all.sample.id, food_item_id: FoodItem.all.sample.id)
end

p "created menuorder"

#########################REVIEWS #########################
99.times do Review.create(restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id, rating: rand(1...5), content: Faker::RuPaul.quote)
end
p "created reviews"

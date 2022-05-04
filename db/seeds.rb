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
                          city_name: "Athens",
                          zipcode: "10009",
                          state: "NY",
                          phone_num: "212-432-0011",
                          cuisine: "Greek",
                          price_range: '$$')
rest_2 = Restaurant.create(name: "L'Artusi",
                          street_name: "228 West 10th Street",
                          city_name: "Milan",
                          zipcode: "10014",
                          state: "NY",
                          phone_num: "212-255-5757",
                          cuisine: "Italian",
                          price_range: "$$$")
rest_3 = Restaurant.create(name: "Somtum Dur",
                          street_name: "85 Avenue A",
                          city_name: "Bangkok",
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
                          cuisine: "American",
                          price_range: "$$$")
rest_5 = Restaurant.create(name: "Black Iron Burger",
                          street_name: "540 E 5th Street",
                          city_name: "New York",
                          zipcode: "10009",
                          state: "NY",
                          phone_num: "212-677-6067",
                          cuisine: "American",
                          price_range: "$")
rest_6 = Restaurant.create(name: "Ofrenda",
                          street_name: "113 7th Avenue South",
                          city_name: "Mexico",
                          zipcode: "10014",
                          state: "NY",
                          phone_num: "212-924-2305",
                          cuisine: "Mexican",
                          price_range: "$$")
rest_7 = Restaurant.create(name: "Sadelle's",
                          street_name: "463 W Broadway",
                          city_name: "Minsk",
                          zipcode: "10012",
                          state: "NY",
                          phone_num: "212-776-4926",
                          cuisine: "Bagels",
                          price_range: "$$")
rest_8 = Restaurant.create(name: "Mission Chinese",
                          street_name: "171 E Broadway",
                          city_name: "Beijing",
                          zipcode: "10002",
                          state: "NY",
                          phone_num: "917-376-5660",
                          cuisine: "Chinese",
                          price_range: "$$")
rest_9 = Restaurant.create(name: "by CHLOE",
                        street_name: "240 Lafayette St",
                        city_name: "Molodechno",
                        zipcode: "10012",
                        state: "NY",
                        phone_num: "347-620-9620",
                        cuisine: "Health",
                        price_range: "$$")
rest_10 = Restaurant.create(name: "Kiki's",
                        street_name: "130 Division Street",
                        city_name: "Athens",
                        zipcode: "10002",
                        state: "NY",
                        phone_num: "646-882-7052",
                        cuisine: "Greek",
                        price_range: "$$")

p "created restaurants"

######################## FOOD ITEMS ###########################

puts "Appetizers"
FoodItem.create(
  food_name: "Fried Cheese Shrimp (Saganaki Shrimp)",
  price: 15,
  restaurant_id: Restaurant.find_by(name:"Taverna Kyclades").id,
  description: "
  One of the most popular appetizers for ouzo, melting the aromas of the sea in its tender pulp.
  Saganaki shrimp, spicy and juicy, cooked in a rich tomato sauce with feta cheese pieces and hot peppers (for more intense taste) are an irresistible temptation!",
  category: "Appetizers",
  picture_url: "shrimp_saganaki.jpg"
)

FoodItem.create(
  food_name: "Chinese rolls",
  price: 18,
  restaurant_id: Restaurant.find_by(name:"Mission Chinese").id,
  description: "Fish rolls",
  category: "Appetizers",
  picture_url: "Chinese_rolls.jpg"
)

FoodItem.create(
  food_name: "Onion rings",
  price: 13,
  restaurant_id: Restaurant.find_by(name:"Black Iron Burger").id,
  description: "fried onion rings",
  category: "Appetizers",
  picture_url: "onion_rings.jpg"
)

FoodItem.create(
  food_name: "Onion rings",
  price: 14,
  restaurant_id: Restaurant.find_by(name:"The Marshall").id,
  description: "fried onion rings",
  category: "Appetizers",
  picture_url: "onion_rings.jpg"
)

FoodItem.create(
  food_name: "Carpaccio rolls with arugula and parmesan",
  price: 21,
  restaurant_id: Restaurant.find_by(name:"L'Artusi").id,
  description: "An unusual serving of a classic beef carpaccio. 
  It looks neater, you can not use very large plates. 
  And yes, it's more convenient.",
  category: "Appetizers",
  picture_url: "Carpaccio.jpg"
)

puts " end Appetizers"

puts "Mains"
FoodItem.create(
  food_name: "Kleftiko",
  price: 24,
  restaurant_id: Restaurant.find_by(name:"Taverna Kyclades").id,
  description: "The history of the origin of this delicious delicacy is quite funny, albeit controversial. 
  There is a version that once upon a time the shepherds decided to steal a ram from the master's flock and eat it. 
  It was decided to smear the slaughtered ram with clay and bury it under the fire so that it would not be found.
  When the shepherds returned to the fire and unearthed their prey, it turned out that the meat had become unusually soft. 
  Much tastier than just roasting it.",
  category: "Mains",
  picture_url: "Kleftiko.jpg"
)

FoodItem.create(
  food_name: "Prosciutto",
  price: 27,
  restaurant_id: Restaurant.find_by(name:"L'Artusi").id,
  description: "Prosciutto is usually served at the table as an appetizer or as part of a cold cut before lunch or dinner.",
  category: "Mains",
  picture_url: "Prosciutto.jpg"
)

FoodItem.create(
  food_name: "Tom Yum",
  price: 23,
  restaurant_id: Restaurant.find_by(name:"Somtum Dur").id,
  description: "This is perhaps the most famous dish in Thai cuisine, and even if you have not been to Thailand yet, 
  you must have at least heard about this sour and spicy soup with lemongrass, galangal and lime leaves. 
  Due to the abundance of spices, the soup has a very specific and memorable taste.",
  category: "Mains",
  picture_url: "Tom_Yum.jpg"
)

FoodItem.create(
  food_name: "Buffalo chicken wings",
  price: 27,
  restaurant_id: Restaurant.find_by(name:"The Marshall").id,
  description: "Legend has it that the owner of the bar, Teresa Belissimo, came up with this chicken wings recipe. 
  Once she was mistakenly delivered with wings instead of necks.
  So that the product would not go to waste, she came up with a recipe.",
  category: "Mains",
  picture_url: "Buffalo_chicken_wings.jpg"
)

FoodItem.create(
  food_name: "Hamburger",
  price: 25,
  restaurant_id: Restaurant.find_by(name:"Black Iron Burger").id,
  description: "Default american dish.",
  category: "Mains",
  picture_url: "Hamburger.jpg"
)

FoodItem.create(
  food_name: "Ceviche",
  price: 30,
  restaurant_id: Restaurant.find_by(name:"Ofrenda").id,
  description: "white fish",
  category: "Mains",
  picture_url: "Ceviche.jpg"
)

FoodItem.create(
  food_name: "Bagel with salmon and cream cheese",
  price: 22,
  restaurant_id: Restaurant.find_by(name:"Sadelle's").id,
  description: "yummy bagel",
  category: "Mains",
  picture_url: "beigl-s-lososem.jpg"
)

FoodItem.create(
  food_name: "Peking Duck",
  price: 24,
  restaurant_id: Restaurant.find_by(name:"Mission Chinese").id,
  description: "A Chinese dish consisting of strips of roast duck served with shredded vegetables and a sweet sauce.",
  category: "Mains",
  picture_url: "pulled-duck.jpg"
)

FoodItem.create(
  food_name: "Chicken fillet skewers",
  price: 26,
  restaurant_id: Restaurant.find_by(name:"by CHLOE").id,
  description: "Chicken fillet can be fried simply in pieces, 
  but it is much more original and interesting to braid braids from stripes of fillet, and only then fry.",
  category: "Mains",
  picture_url: "Chicken.jpg"
)

FoodItem.create(
  food_name: "Penne Arrabbiata",
  price: 27,
  restaurant_id: Restaurant.find_by(name:"Kiki's").id,
  description: "Penne with spicy tomato sauce",
  category: "Mains",
  picture_url: "Penne-Arrabbiata.jpg"
)

puts " end mains"

puts " desserts"

FoodItem.create(
  food_name: "Berry mascarpone bagels",
  price: 12,
  restaurant_id: Restaurant.find_by(name:"Sadelle's").id,
  description: "Dark chocolate ganache log w/ crumbled Greek cookies",
  category: "Desserts",
  picture_url: "Berry-Mascarpone-Bagels.jpg"
)

FoodItem.create(
  food_name: "Fried bananas",
  price: 11,
  restaurant_id: Restaurant.find_by(name:"Ofrenda").id,
  description: "Fried bananas in sesame.",
  category: "Desserts",
  picture_url: "Fried_bananas.jpg"
)

FoodItem.create(
  food_name: "Brownie",
  price: 10,
  restaurant_id: Restaurant.find_by(name:"Black Iron Burger").id,
  description: "Dark chocolate cookies",
  category: "Desserts",
  picture_url: "brownie.jpg"
)

FoodItem.create(
  food_name: "Apple pie",
  price: 15,
  restaurant_id: Restaurant.find_by(name:"The Marshall").id,
  description: "Apple pie is perhaps the most iconic dish in the United States. 
  It appeared on the tables of Americans thanks to immigrants from Great Britain, Sweden and Holland.",
  category: "Desserts",
  picture_url: "Apple_pie.jpg"
)

FoodItem.create(
  food_name: "Кхао niew Bing",
  price: 14,
  restaurant_id: Restaurant.find_by(name:"Somtum Dur").id,
  description: "Khao niew bing - sweet glutinous rice wrapped in banana leaves.",
  category: "Desserts",
  picture_url: "kha-niew-bing.jpg"
)

FoodItem.create(
  food_name: "Galaktobureko",
  price: 15,
  restaurant_id: Restaurant.find_by(name:"Taverna Kyclades").id,
  description: "A chic Greek casserole made from the finest filo dough, which is soaked in citrus syrup. 
  Semolina is used for the filling, and it can be decided that as a result, ordinary semolina porridge is obtained from it. 
  But when you eat dessert, you dont feel the cereal in it at all, rather, on the contrary!
  It seems that a delicate custard with subtle lemon or orange notes is melting on the tongue.",
  category: "Desserts",
  picture_url: "Galaktobureko.jpg"
)

puts " end desserts"

puts " drinks"
FoodItem.create(
  food_name: "Frappe coffee",
  price: 5,
  restaurant_id: Restaurant.find_by(name:"Taverna Kyclades").id,
  description: "cold coffee",
  category: "Drinks",
  picture_url: "kofe-frappe.jpg"
)

FoodItem.create(
  food_name: "Frappe Coffee",
  price: 4,
  restaurant_id: Restaurant.find_by(name:"Kiki's").id,
  description: "cold coffee",
  category: "Drinks",
  picture_url: "kofe-frappe.jpg"
)

FoodItem.create(
  food_name: "Martini",
  price: 15,
  restaurant_id: Restaurant.find_by(name:"L'Artusi").id,
  description: "strong drink",
  category: "Drinks",
  picture_url: "martini.jpg"
)

FoodItem.create(
  food_name: "Illy Coffee",
  price: 4,
  restaurant_id: Restaurant.find_by(name:"Somtum Dur").id,
  description: "just coffee",
  category: "Drinks",
  picture_url: "cup_of_coffee.jpg"
)

FoodItem.create(
  food_name: "Illy Coffee",
  price: 5,
  restaurant_id: Restaurant.find_by(name:"Sadelle's").id,
  description: "just coffee",
  category: "Drinks",
  picture_url: "cup_of_coffee.jpg"
)

FoodItem.create(
  food_name: "Sparkling water",
  price: 2,
  restaurant_id: Restaurant.find_by(name:"by CHLOE").id,
  description: "default sparkling water",
  category: "Drinks",
  picture_url: "voda.jpg"
)

FoodItem.create(
  food_name: "Coca-cola",
  price: 2,
  restaurant_id: Restaurant.find_by(name:"Black Iron Burger").id,
  description: "best soda",
  category: "Drinks",
  picture_url: "coca_cola.jpg"
)

  puts " end drinks"





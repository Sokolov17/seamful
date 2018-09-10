# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_09_10_154935) do

  create_table "food_items", force: :cascade do |t|
    t.string "food_name"
    t.string "food_url"
    t.integer "price"
    t.integer "restaurant_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.index ["restaurant_id"], name: "index_food_items_on_restaurant_id"
  end

  create_table "menuorders", force: :cascade do |t|
    t.integer "order_id"
    t.integer "food_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_item_id"], name: "index_menuorders_on_food_item_id"
    t.index ["order_id"], name: "index_menuorders_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "user_id"
    t.integer "menuorder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menuorder_id"], name: "index_orders_on_menuorder_id"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "street_name"
    t.string "city_name"
    t.string "zipcode"
    t.string "state"
    t.string "phone_num"
    t.string "cuisine"
    t.string "price_range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "user_id"
    t.integer "rating"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street_name"
    t.string "city_name"
    t.string "zipcode"
    t.string "state"
    t.string "credit_card_num"
    t.string "phone_num"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

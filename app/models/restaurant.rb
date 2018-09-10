class Restaurant < ApplicationRecord
  has_many :food_items 
  has_many :orders
  has_many :reviews
  has_many :users, through: :orders
end

class FoodItem < ApplicationRecord
  belongs_to :restaurant
  has_many :menuorders
  has_many :orders, through: :menuorders
end

class FoodItem < ApplicationRecord
  belongs_to :restaurant
  has_many :menuorders
  has_many :orders, through: :menuorders

  def self.most_expensive
    FoodItem.all.sort_by{ |a| a.price }.last
  end


end

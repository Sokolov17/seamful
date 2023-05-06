class Menuorder < ApplicationRecord
  belongs_to :order
  belongs_to :food_item


  def self.most_popular_dish
    FoodItem.all.sort_by { |a| a.menuorders.count }.last
  end

  def self.least_popular_dish
    FoodItem.all.sort_by { |a| a.menuorders.count }.first
  end



end

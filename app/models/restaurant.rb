class Restaurant < ApplicationRecord
  has_many :food_items
  has_many :orders
  has_many :reviews
  has_many :users, through: :orders


  def menu_category(cat)
    self.food_items.where(category: cat)
  end

  def avg_rating
    self.reviews.sum(:rating)/self.reviews.count #handle dividing by 0
  end

end

class Restaurant < ApplicationRecord
  has_many :food_items
  has_many :orders
  has_many :reviews
  has_many :users, through: :orders


  def menu_category(cat)
    self.food_items.where(category: cat)
  end

  def avg_rating
    if self.reviews.sum(:rating) != 0
      self.reviews.sum(:rating)/self.reviews.count
    else
      return "There are not enough "
  end

end

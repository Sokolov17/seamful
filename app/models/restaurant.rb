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
      avg = self.reviews.sum(:rating)/self.reviews.count
      "#{avg} stars"
    else
      return "There are not enough reviews for this restaurant."
    end
  end

end

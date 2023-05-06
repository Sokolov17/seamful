class Restaurant < ApplicationRecord
  has_many :food_items
  has_many :orders
  has_many :reviews
  has_many :users, through: :orders


  def menu_category(cat)
    self.food_items.where(category: cat)
  end

  def get_avg
    if self.reviews.count != 0
      (self.reviews.sum(:rating).to_f/self.reviews.count).round(2)
    else
      0
    end
  end

  def stars
    rating = self.get_avg #3.6
    whole_star = '<i class="fas fa-star"></i>'
    half_star = '<i class="fas fa-star-half"></i>'
    stars = ""
    # whole_stars = (rating / 1).floor
    # half_star = 0
    # decimal_stars = rating % 1 # .6
    #
    # if decimal_stars >= 0.8
    #   whole_stars += 1
    # elsif decimal_stars >= 0.3
    #   half_star = 1
    # end

    until rating < 1
      stars << whole_star
      rating -= 1
    end

    if rating <= 0.8
      stars << whole_star
    else
      stars << half_star
    end

    stars

  end

  def avg_rating
    if self.reviews.sum(:rating) != 0
      avg = (self.reviews.sum(:rating).to_f/self.reviews.count).round(2)
      "#{avg} stars"
    else
      return "There are not enough reviews for this restaurant."
    end
  end

  def self.highest_avg_rating
    Restaurant.all.sort_by { |a| a.get_avg }.last
  end

  def self.lowest_avg_rating
    Restaurant.all.sort_by { |a| a.get_avg }.first
  end

  def revenue
    sum=0
    self.orders.each do |order|
      sum += order.total
    end
    sum
  end

end

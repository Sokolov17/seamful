class Order < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  has_many :menuorders, dependent: :destroy
  has_many :food_items, through: :menuorders

  def total
    self.menuorders.map do |menu_order|
      menu_order.food_item.price
    end.sum
  end

  def self.most_active_user
    User.all.sort_by { |a| a.orders.length }.last
  end

  def self.most_ordered
    Restaurant.all.sort_by { |a| a.orders.length }.last
  end

  def self.most_expensive
    Order.all.sort_by { |a| a.total }.last
  end

  def self.total_spend
    sum=0
    Order.all.each do |order|
      sum += order.total
    end
    sum
  end

end

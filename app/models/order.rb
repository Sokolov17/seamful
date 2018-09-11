class Order < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  has_many :menuorders
  has_many :food_items, through: :menuorders

  def total
    self.menuorders.map do |menu_order|
      menu_order.food_item.price
    end.sum
  end

end

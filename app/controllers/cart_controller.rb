class CartController < ApplicationController

  def show
    @food_items = cart.map { |item| FoodItem.find(item) }
    @total = @food_items.sum(&:price)
  end

  def update
    params[:items].each do |key, value|
      if value != ""
        value = value.to_i
        value.times do
          add_to_cart(key)
        end
      end
    end
    redirect_to cart_path
  end

end

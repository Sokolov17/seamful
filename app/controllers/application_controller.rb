class ApplicationController < ActionController::Base
  helper_method :get_items_from_cart

  def cart
    session[:cart] ||= []
  end

  def add_to_cart(food_item_id)
    cart << food_item_id
  end

  def get_items_from_cart
    @cart_items = FoodItem.find(cart)
  end

end

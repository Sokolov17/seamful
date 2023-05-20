class ApplicationController < ActionController::Base
  before_action :authorized
  helper_method :get_items_from_cart
  helper_method :logged_in?
  helper_method :current_user

  def init_cart
    session[:cart] = []
  end

  def cart
    session[:cart] ||= []
  end

  def add_to_cart(food_item_id)
    cart << food_item_id
  end

  def get_items_from_cart
    @cart_items = FoodItem.find(cart)
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def authorized
    unless logged_in?
      flash[:notice] = "Please login to see this page"
      redirect_to login_path
    end
  end

end

class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :delete]

  def index
    @orders = Order.all
  end

  def create
    rest_id = FoodItem.find(session[:cart].first).restaurant_id
    @order = Order.create(user_id: session[:user_id], restaurant_id: rest_id)
    @order.update!(delivery_in: @order.created_at+rand(25..47).minutes)
    session[:cart].each do |food_id|
      Menuorder.create(order_id: @order.id, food_item_id: food_id)
    end
    init_cart
    redirect_to order_path(@order)
  end

  def show
  end



private

  def set_order
    @order = Order.find(params[:id])
  end

end

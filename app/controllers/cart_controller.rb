class CartController < ApplicationController



  def update
    session[:cart] << [params[:food_item_id]] = params[:quantity]


    @fooditem = FoodItem.find(params[:food_item_id])
    add_to_cart(params[:food_item_id])
    flash[:notice] = "Successfully added"
    redirect_to restaurant_path(@fooditem.restaurant)
  end


end

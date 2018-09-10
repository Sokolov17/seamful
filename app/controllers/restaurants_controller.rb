class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end


private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :street_name, :city_name, :zipcode, :state, :phone_num, :cuisine, :price_range)
  end

end

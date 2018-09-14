class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :restaurant_reviews]

  def index
    @restaurants = Restaurant.all.sort_by{|restaurant| restaurant.name }
  end

  def show
    render :layout => 'indices'
  end

  def restaurant_reviews
    @reviews = Review.all.select do |review|
      review.restaurant.id == @restaurant.id
    end
  end


private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :street_name, :city_name, :zipcode, :state, :phone_num, :cuisine, :price_range)
  end

end

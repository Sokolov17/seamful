class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :delete]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to reviews_path #redirect to User's review path if logged in
    else
      render :new
    end
  end

  def edit
  end

  def update
    @review.update(review_params)
    if @review.save
      redirect_to review_path(@review)
    else
      render :edit
    end
  end


private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:restaurant_id, :user_id, :rating, :content)
  end

end

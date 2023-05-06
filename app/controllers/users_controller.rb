class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  before_action :set_user, only: [:show, :edit, :update, :destroy, :orders, :reviews]

  def index
    @users = User.all
    render :index
  end

  def show
    render :show
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    @user.first_name = user_params[:first_name].titleize
    @user.last_name = user_params[:last_name].titleize
    @user.street_name = user_params[:street_name].titleize
    @user.city_name = user_params[:city_name].titleize
    @user.state = user_params[:state].titleize
    if @user.save
      #session[:user_id] = @user.id
      UserMailer.registration_confirmation(@user).deliver
      flash[:success] = "Please confirm your email address to continue"
      redirect_to home
    else
      render :new
    end
  end

  def confirm_email
    @user = User.find_by_confirm_token(params[:id])
    if @user
      @user.email_activate
      flash[:success] = "Welcome to the Sample App! Your email has been confirmed.
      Please sign in to continue."
      redirect_to login
    else
      flash[:error] = "Sorry. User does not exist"
      redirect_to home
    end
end

  def edit
    if current_user.id == @user.id
      render :edit
    else
      flash[:notice] = "You are not authorized to do that"
      redirect_to user_path(@user)
    end
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Profile updated!"
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @user.id
      @user.destroy
      session.destroy
      flash[:notice] = "Account for #{@user.first_name} deleted."
      redirect_to home_path
    else
      flash[:notice] = "You are not authorized to do that"
      redirect_to user_path(@user)
    end
  end

  def orders
    @orders = Order.all.select do |order|
      order.user == @user
    end
  end

  def reviews
    @reviews = Review.all.select do |review|
      review.user == @user
    end
  end

  

private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :street_name, :city_name, :zipcode, :state, :credit_card_num, :phone_num, :email, :password)
  end

end

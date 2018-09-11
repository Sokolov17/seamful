class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    render :new
  end

  def create
    user = User.find_by( {email: params[:email]})
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      init_cart
      flash[:notice] = "Login Successful"
      redirect_to restaurants_path
    else
      flash[:notice] = "Invalid username or password"
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to home_path
  end

end

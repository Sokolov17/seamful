class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    render :new
  end

  def create
    user = User.find_by( {email: params[:email]})
    if user && user.authenticate(params[:password])
    if user.email_confirmed?
      session[:user_id] = user.id
      init_cart
      flash[:notice] = "Login Successful"
      redirect_to guide_path
    else 
      flash.now[:notice] = 'Please activate your account by following the 
      instructions in the account confirmation email you received to proceed'
      render :new
    end
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

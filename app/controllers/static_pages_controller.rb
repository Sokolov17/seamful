class StaticPagesController < ApplicationController
  skip_before_action :authorized
  helper_method :current_user
  def home
  end

  def about
  end

  def contact
  end

  def guide
  end

  def analytics
    render :layout => 'indices'
  end  

  def current_user
    p session[:user_id]
    User.find_by( {id: session[:user_id]})
  end

end

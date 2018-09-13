class StaticPagesController < ApplicationController
  skip_before_action :authorized
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

end

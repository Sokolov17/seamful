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

end

class MenuordersController < ApplicationController

  def new
    @menuorder = Menuorder.new
  end

  def create
    @menuorder = Menuorder.create
    
  end

end

class GuidesController < ApplicationController
  def bagels
    @restaurants = Restaurant.all.select do |r|
      r.cuisine == "Bagels"
    end
    render :'restaurants/index'
  end

  def chinese
    @restaurants = Restaurant.all.select do |r|
      r.cuisine == "Chinese"
    end
    render :'restaurants/index'
  end

  def fusion
    @restaurants = Restaurant.all.select do |r|
      r.cuisine == "Fusion"
    end
    render :'restaurants/index'
  end

  def greek
    @restaurants = Restaurant.all.select do |r|
      r.cuisine == "Greek"
    end
    render :'restaurants/index'
  end

  def health
    @restaurants = Restaurant.all.select do |r|
      r.cuisine == "Health"
    end
    render :'restaurants/index'
  end

  def italian
    @restaurants = Restaurant.all.select do |r|
      r.cuisine == "Italian"
    end
    render :'restaurants/index'
  end

  def mexican
    @restaurants = Restaurant.all.select do |r|
      r.cuisine == "Mexican"
    end
    render :'restaurants/index'
  end

  def american
    @restaurants = Restaurant.all.select do |r|
      r.cuisine == "American"
    end
    render :'restaurants/index'
  end

  def thai
    @restaurants = Restaurant.all.select do |r|
      r.cuisine == "Thai"
    end
    render :'restaurants/index'
  end



end

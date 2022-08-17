class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
  end

  def show
    @res
  end

  def destroy
  end

  def update
  end

  def create
  end

  def edit
  end

  def index
    @restaurants = Restaurant.all
  end
end

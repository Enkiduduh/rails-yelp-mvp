class ReviewsController < ApplicationController
  # def index
  #   @review = Restaurant.all
  # end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurants_index_path
  end

  def update
    @review = Review.find(params[:id])
    @review.update(restaurant_params)
    redirect_to restaurants_index_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end

  def show
    @review = Review.find(params[:id])
  end
end

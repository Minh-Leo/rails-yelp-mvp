class ReviewsController < ApplicationController
   before_action :set_review, only: [:show]
   before_action :set_restaurant, only: [:index, :new, :create]

  def index
    @reviews = @restaurant.reviews
  end

  def show; end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def set_review
    @review = Review.find(params[:restaurant_id])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

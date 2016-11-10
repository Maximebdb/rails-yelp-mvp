class ReviewsController < ApplicationController

before_action :set_restaurant, only: [:new,:create]

  def new # GET /reviews/new
    @review = Review.new
  end

  def create # POST /reviews
    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to restaurant_path(@review.restaurant_id)
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params['restaurant_id'])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

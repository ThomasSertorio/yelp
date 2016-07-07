class ReviewsController < ApplicationController
  before_action :set_restaurant, only:[:create]

  # get restaurants/:restaurant_id/reviews/new
  # def new
  #   @review = Review.new
  # end

  # post restaurants/:restaurant_id/reviews
  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    # @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant), notice: "Yessss!"
    else
      render 'restaurants/show'
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end

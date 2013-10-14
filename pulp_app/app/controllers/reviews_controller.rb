class ReviewsController < ApplicationController

	def new
  @restaurant = Restaurant.find_by_id(params[:restaurant_id])
	@review = Review.new
	end

	def create
    @restaurant = Restaurant.find_by_id(params[:restaurant_id])
    @review = @restaurant.reviews.build params[:review].permit(:title, :review, :rating)

    if @review.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end
end



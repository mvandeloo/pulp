class ReviewsController < ApplicationController

	def new
  @restaurant = Restaurant.find_by_id(params[:restaurant_id])
	@review = Review.new
	end

	def create
    @restaurant = Restaurant.find_by_id(params[:restaurant_id])
    @review = Review.new params[:review].permit(:title, :review)

    if @review.save
      redirect_to restaurant_url(@review.restaurant_id)
    else
      render 'new'
    end
  end

end

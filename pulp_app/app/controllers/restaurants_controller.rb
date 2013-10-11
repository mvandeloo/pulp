class RestaurantsController < ApplicationController


 	def index
    	@restaurants = Restaurant.all
  	end

	def create
    	@restaurant = Restaurant.new 
  	end



end

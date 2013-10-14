module ReviewsHelper

	def stars_for_rating(rating)
 	stars = ' '
 	rating.times do
 	stars << image_tag('star-on-big.png')
	end
	stars.html_safe
	end


end

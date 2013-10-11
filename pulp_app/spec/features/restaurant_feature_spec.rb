require 'spec_helper'

def create_restaurant(some_title, some_description)
  Restaurant.create({title: some_title, description: some_description})
end

describe 'Index Page' do
		before(:all) do
		    create_restaurant 'some restaurant', 'restaurant in soho'
		 end



		describe 'the restaurants page' do
			it 'should display restaurants' do
				visit '/restaurants'
				expect(page).to have_content 'some restaurant'
			end
		end

	  describe '/restaurants/:id' do
	    it 'has an own page with headline and description' do
	      visit '/restaurants'
	      click_link 'some restaurant'

	      expect(page).to have_css 'h1', text: 'some restaurant'
	      expect(page).to have_css 'div', text: 'restaurant in soho'
	    end
	  end

end	  

describe '/restaurants/new' do
    
    it 'creates a new restaurant page' do
      visit '/restaurants/new'

      within '.new_restaurant' do
        fill_in 'Title', with: 'Soup Kitchen'
        fill_in 'Description', with: 'Soup only'
        click_button "Create Restaurant"
      end

      expect(current_url).to eq url_for(Restaurant.last)
      expect(page).to have_content 'Soup Kitchen'
    end
end    






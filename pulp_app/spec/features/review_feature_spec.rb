require 'spec_helper'

describe 'visit restaurant review path' do

  before(:all) do
        @restaurant = Restaurant.create(title: 'Test', description: 'Foo')
        visit restaurant_path(@restaurant)
        click_link 'New Review'
  end
    
    it 'creates a new review' do

      within '.new_review' do
        fill_in 'Title', with: 'The soup was ugly'
        fill_in 'Review', with: 'Never again'
        choose '5'
        click_button "Create Review"
      end

      expect(page).to have_content 'Never again'
    end
end    




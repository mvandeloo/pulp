require 'spec_helper'

def create_review(some_title, some_review, some_rating)
  Review.create({title: some_title, review: some_review})
end


describe 'visit restaurant review path' do

  before(:all) do
        visit '/restaurants/1'
        click_link 'New Review'
  end
    
    it 'creates a new review' do
  

      within '.new_review' do
        fill_in 'Title', with: 'The soup was ugly'
        fill_in 'Review', with: 'Never again'
        click_button "Create Review"
      end

      expect(page).to have_content 'Never again'
    end
end    




require 'spec_helper'

def create_restaurant(some_title)
  Restaurant.create({title: some_title})
end


describe 'the restaurants page' do
it 'should display restaurants' do
create_restaurant 'some restaurant'
visit '/restaurants'

expect(page).to have_content 'some restaurant'
end
end
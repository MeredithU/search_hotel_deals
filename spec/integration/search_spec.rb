require 'spec_helper'

feature 'Search for Hotels' do
  before do
    visit '/'
  end

  scenario 'can search for a hotel' do
    fill_in 'Where', :with => 'Seattle'
    fill_in 'Daily Rate ($)', :with => '100'
    select '3', :from => 'Star Rating'
    click_button 'Search'
  end
end

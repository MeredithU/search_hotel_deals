require 'spec_helper'

describe 'home page' do
  it 'allows user to enter search details' do
    visit '/'
    page.should have_content('Search Hotels')
  end
end

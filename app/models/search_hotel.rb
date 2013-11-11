class SearchHotel < ActiveRecord::Base
  attr_accessible :address, :city, :latitude, :longitude, :max_daily_rate, :max_star_rating, :min_daily_rate, :min_star_rating

  include HTTParty
  require 'uri'
  require 'json'

  def get_data
    encoded_url = URI.encode("http://deals.expedia.com/beta/deals/hotels.json?city=#{city}")
    HTTParty.get(encoded_url)
  end
end

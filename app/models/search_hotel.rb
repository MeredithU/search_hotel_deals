class SearchHotel < ActiveRecord::Base
  attr_accessible :address,
                  :city,
                  :latitude,
                  :longitude,
                  :max_daily_rate,
                  :max_star_rating,
                  :min_daily_rate,
                  :min_star_rating

  has_many :hotel_results

  include HTTParty
  require 'uri'
  require 'json'

  def get_expedia_data
    encoded_url = URI.encode("http://deals.expedia.com/beta/deals/hotels.json?city=#{city}")
    results = HTTParty.get(encoded_url)
    #Rails.logger.info results.inspect
    hotel_result = []
    results.each do |result|
      puts result
      hotel = HotelResult.new
      hotel.check_in_date     = result["checkInDate"]
      hotel.check_out_date    = result["checkOutDate"]
      hotel.hotel_description = result["description"]
      hotel.hotel_id          = result["hotelId"]
      hotel.hotel_latitude    = result["latitude"]
      hotel.hotel_longitude   = result["longitude"]
      hotel.hotel_star_rating = result["starRating"]
      hotel.image_url         = result["imageUrl"]
      hotel.length_of_stay    = result["lengthofStay"]
      hotel.name              = result["name"]
      hotel.original_rate     = result["originalPricePerNight"]
      hotel.promo_rate        = result["pricePerNight"]
      hotel.save

      hotel_result << result
    end
  end
end

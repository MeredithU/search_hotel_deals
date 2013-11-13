class HotelResult < ActiveRecord::Base
  attr_accessible :check_in_date,
                  :check_out_date,
                  :hotel_description,
                  :hotel_id,
                  :hotel_latitude,
                  :hotel_longitude,
                  :hotel_star_rating,
                  :image_url,
                  :length_of_stay,
                  :name,
                  :original_rate,
                  :promo_rate,
                  :promo_amount,
                  :search_hotel_id

  belongs_to :search_hotel
end

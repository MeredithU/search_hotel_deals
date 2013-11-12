class CreateHotelResults < ActiveRecord::Migration
  def change
    create_table :hotel_results do |t|
      t.string :name
      t.float :hotel_star_rating
      t.string :image_url
      t.float :original_rate
      t.float :promo_rate
      t.string :hotel_description
      t.integer :hotel_id
      t.integer :length_of_stay
      t.datetime :check_in_date
      t.datetime :check_out_date
      t.float :hotel_latitude
      t.float :hotel_longitude
      t.belongs_to :search_hotels

      t.timestamps
    end
  end
end

class CreateSearchHotels < ActiveRecord::Migration
  def change
    create_table :search_hotels do |t|
      t.string :city
      t.string :address
      t.float :min_daily_rate
      t.float :max_daily_rate
      t.float :min_star_rating
      t.float :max_star_rating
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

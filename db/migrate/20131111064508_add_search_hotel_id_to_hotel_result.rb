class AddSearchHotelIdToHotelResult < ActiveRecord::Migration
  def up
    add_column :hotel_results, :search_hotel_id, :integer
    remove_column :hotel_results, :search_hotels_id
  end

  def down
    remove_column :hotel_results, :search_hotel_id
    add_column :hotel_results, :search_hotels_id, :integer
  end
end

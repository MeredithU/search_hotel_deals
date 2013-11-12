class ChangeDataTypeForHotelDescription < ActiveRecord::Migration
  def up
    change_column :hotel_results, :hotel_description, :text
  end

  def down
    change_column :hotel_results, :hotel_description, :string
  end
end

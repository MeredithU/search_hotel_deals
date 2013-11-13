class AddPromoAmountToHotelResult < ActiveRecord::Migration
  def up
    add_column :hotel_results, :promo_amount, :float
  end

  def down
    remove_column :hotel_results, :promo_amount
  end
end

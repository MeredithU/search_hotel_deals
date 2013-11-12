class SearchHotelsController < ApplicationController

  def index
    @search_hotel = SearchHotel.new
    @search_hotels = SearchHotel.all
  end

  def create
    @search_hotel = SearchHotel.new(params[:search_hotel])
    if @search_hotel.save
      # Call Expedia API
      #@hotel_result = @search_hotel.hotel_results.create
      @search_hotel.get_expedia_data
      redirect_to @search_hotel
    else
      render :action => "index"
    end
  end

  def show
    @search_hotel = SearchHotel.find(params[:id])
  end
end

class SearchHotelsController < ApplicationController

  def index
    @search_hotels = SearchHotel.all
    @search_hotel = SearchHotel.new
  end

  def create
    @search_hotel = SearchHotel.new(params[:search_hotel])
    if @search_hotel.save
      redirect_to @search_hotel
    else
      render :action => "index"
    end
  end

  def show

  end
end

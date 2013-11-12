# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131111064508) do

  create_table "hotel_results", :force => true do |t|
    t.string   "name"
    t.float    "hotel_star_rating"
    t.string   "image_url"
    t.float    "original_rate"
    t.float    "promo_rate"
    t.string   "hotel_description"
    t.integer  "hotel_id"
    t.integer  "length_of_stay"
    t.datetime "check_in_date"
    t.datetime "check_out_date"
    t.float    "hotel_latitude"
    t.float    "hotel_longitude"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "search_hotel_id"
  end

  create_table "search_hotels", :force => true do |t|
    t.string   "city"
    t.string   "address"
    t.float    "min_daily_rate"
    t.float    "max_daily_rate"
    t.float    "min_star_rating"
    t.float    "max_star_rating"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end

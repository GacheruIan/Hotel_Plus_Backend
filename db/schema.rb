# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_09_174428) do

  create_table "bookings", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.string "description"
    t.integer "hotel_id"
    t.integer "user_id"
    t.integer "room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "image_url"
    t.string "name"
    t.string "location"
    t.string "description"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_type"
    t.integer "room_no"
    t.integer "hotel_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "user_name"
    t.string "email"
    t.integer "phone_number"
    t.string "password"
    t.string "confirm_password"
    t.string "gender"
  end

end

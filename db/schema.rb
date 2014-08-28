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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140815204421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: true do |t|
    t.integer  "facility_id"
    t.integer  "sport_id"
    t.datetime "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bookings", ["facility_id"], name: "index_bookings_on_facility_id", using: :btree
  add_index "bookings", ["sport_id"], name: "index_bookings_on_sport_id", using: :btree

  create_table "facilities", force: true do |t|
    t.text    "name"
    t.integer "formatted_phone_number"
    t.text    "formatted_address"
    t.decimal "rating"
    t.text    "website"
    t.text    "img_url"
    t.integer "reviews"
    t.text    "opening_hours"
    t.string  "identifier"
  end

  create_table "friendships", force: true do |t|
    t.integer "user_id"
    t.integer "friend_id"
  end

  create_table "likes", force: true do |t|
    t.integer "facility_id"
    t.integer "user_id"
  end

  add_index "likes", ["facility_id"], name: "index_likes_on_facility_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "facility_id"
    t.text     "body"
    t.integer  "vote_count"
    t.datetime "submitted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["facility_id"], name: "index_reviews_on_facility_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "sports", force: true do |t|
    t.string "name"
    t.text   "image"
  end

  create_table "user_bookings", force: true do |t|
    t.integer "user_id"
    t.integer "booking_id"
  end

  add_index "user_bookings", ["booking_id"], name: "index_user_bookings_on_booking_id", using: :btree
  add_index "user_bookings", ["user_id"], name: "index_user_bookings_on_user_id", using: :btree

  create_table "user_sports", force: true do |t|
    t.integer "user_id"
    t.integer "sport_id"
    t.string  "skill_level"
    t.string  "rating"
  end

  add_index "user_sports", ["sport_id"], name: "index_user_sports_on_sport_id", using: :btree
  add_index "user_sports", ["user_id"], name: "index_user_sports_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: ""
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.text     "image"
    t.string   "access_token"
    t.string   "hometown"
    t.string   "location"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: true do |t|
    t.integer "user_id"
    t.integer "review_id"
    t.boolean "is_up"
  end

  add_index "votes", ["review_id"], name: "index_votes_on_review_id", using: :btree
  add_index "votes", ["user_id"], name: "index_votes_on_user_id", using: :btree

end

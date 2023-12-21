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

ActiveRecord::Schema[7.1].define(version: 2023_12_21_065621) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airbnb_flats", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.integer "price_per_night"
    t.integer "number_of_guests"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kt_bookings", force: :cascade do |t|
    t.bigint "kt_user_id", null: false
    t.bigint "kt_experience_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.string "status"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kt_experience_id"], name: "index_kt_bookings_on_kt_experience_id"
    t.index ["kt_user_id"], name: "index_kt_bookings_on_kt_user_id"
  end

  create_table "kt_experiences", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.string "category"
    t.string "address"
    t.bigint "host_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host_id"], name: "index_kt_experiences_on_host_id"
  end

  create_table "kt_favorites", force: :cascade do |t|
    t.bigint "kt_user_id", null: false
    t.bigint "kt_experience_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kt_experience_id"], name: "index_kt_favorites_on_kt_experience_id"
    t.index ["kt_user_id"], name: "index_kt_favorites_on_kt_user_id"
  end

  create_table "kt_messages", force: :cascade do |t|
    t.bigint "kt_user_id", null: false
    t.bigint "kt_booking_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kt_booking_id"], name: "index_kt_messages_on_kt_booking_id"
    t.index ["kt_user_id"], name: "index_kt_messages_on_kt_user_id"
  end

  create_table "kt_reviews", force: :cascade do |t|
    t.bigint "kt_user_id", null: false
    t.bigint "kt_booking_id", null: false
    t.text "content"
    t.integer "danger_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kt_booking_id"], name: "index_kt_reviews_on_kt_booking_id"
    t.index ["kt_user_id"], name: "index_kt_reviews_on_kt_user_id"
  end

  create_table "kt_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.boolean "host", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_kt_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_kt_users_on_reset_password_token", unique: true
  end

  create_table "tasks_tasks", force: :cascade do |t|
    t.string "title"
    t.text "details"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "watchlist_bookmarks", force: :cascade do |t|
    t.string "comment"
    t.bigint "watchlist_movie_id", null: false
    t.bigint "watchlist_list_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["watchlist_list_id"], name: "index_watchlist_bookmarks_on_watchlist_list_id"
    t.index ["watchlist_movie_id"], name: "index_watchlist_bookmarks_on_watchlist_movie_id"
  end

  create_table "watchlist_lists", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "watchlist_movies", force: :cascade do |t|
    t.string "title"
    t.text "overview"
    t.string "poster_url"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wiki_articles", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yelp_restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yelp_reviews", force: :cascade do |t|
    t.bigint "yelp_restaurant_id", null: false
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["yelp_restaurant_id"], name: "index_yelp_reviews_on_yelp_restaurant_id"
  end

  add_foreign_key "kt_bookings", "kt_experiences"
  add_foreign_key "kt_bookings", "kt_users"
  add_foreign_key "kt_experiences", "users", column: "host_id"
  add_foreign_key "kt_favorites", "kt_experiences"
  add_foreign_key "kt_favorites", "kt_users"
  add_foreign_key "kt_messages", "kt_bookings"
  add_foreign_key "kt_messages", "kt_users"
  add_foreign_key "kt_reviews", "kt_bookings"
  add_foreign_key "kt_reviews", "kt_users"
  add_foreign_key "watchlist_bookmarks", "watchlist_lists"
  add_foreign_key "watchlist_bookmarks", "watchlist_movies"
  add_foreign_key "yelp_reviews", "yelp_restaurants"
end

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_27_162238) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "region"
    t.string "subregion"
    t.string "currency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "create_trips", force: :cascade do |t|
    t.bigint "country_id"
    t.bigint "user_id"
    t.integer "rating"
    t.string "description"
    t.string "price"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_create_trips_on_country_id"
    t.index ["user_id"], name: "index_create_trips_on_user_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.bigint "create_trips_id"
    t.string "url"
    t.string "caption"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["create_trips_id"], name: "index_pictures_on_create_trips_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "bio"
    t.string "email"
    t.string "location"
    t.string "profile_picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "create_trips", "countries"
  add_foreign_key "create_trips", "users"
end

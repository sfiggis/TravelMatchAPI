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

ActiveRecord::Schema.define(version: 20171127154438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airport_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.bigint "airport_type_id"
    t.float "longitude"
    t.boolean "scheduled_service"
    t.float "elevation"
    t.string "wiki"
    t.bigint "location_id"
    t.float "latitude"
    t.index ["airport_type_id"], name: "index_airports_on_airport_type_id"
    t.index ["location_id"], name: "index_airports_on_location_id"
  end

  create_table "codes", force: :cascade do |t|
    t.string "name"
    t.string "codeable_type"
    t.bigint "codeable_id"
    t.string "value"
    t.index ["codeable_type", "codeable_id"], name: "index_codes_on_codeable_type_and_codeable_id"
  end

  create_table "journey_profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.float "budget"
    t.integer "duration"
    t.index ["user_id"], name: "index_journey_profiles_on_user_id"
  end

  create_table "journeys", force: :cascade do |t|
    t.datetime "departure_date"
    t.datetime "return_date"
    t.bigint "origin_id"
    t.bigint "destination_id"
    t.bigint "journey_profile_id"
    t.index ["destination_id"], name: "index_journeys_on_destination_id"
    t.index ["journey_profile_id"], name: "index_journeys_on_journey_profile_id"
    t.index ["origin_id"], name: "index_journeys_on_origin_id"
  end

  create_table "location_types", force: :cascade do |t|
    t.string "name"
    t.boolean "orphanable"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.float "longitude"
    t.float "latitude"
    t.string "wiki"
    t.bigint "location_type_id"
    t.bigint "parent_location_id"
    t.text "content"
    t.float "gdp_ppp"
    t.index ["location_type_id"], name: "index_locations_on_location_type_id"
    t.index ["parent_location_id"], name: "index_locations_on_parent_location_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.string "tagable_type"
    t.bigint "tagable_id"
    t.index ["tagable_type", "tagable_id"], name: "index_tags_on_tagable_type_and_tagable_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "family_name"
    t.bigint "location_id"
    t.string "email"
    t.index ["location_id"], name: "index_users_on_location_id"
  end

  add_foreign_key "airports", "airport_types"
  add_foreign_key "journey_profiles", "users"
  add_foreign_key "journeys", "locations", column: "destination_id"
  add_foreign_key "journeys", "locations", column: "origin_id"
  add_foreign_key "locations", "location_types"
  add_foreign_key "users", "locations"
end

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

ActiveRecord::Schema.define(version: 20151101000430) do

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "country_id"
  end

  add_index "cities", ["country_id"], name: "index_cities_on_country_id"

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "developers", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.integer  "phone"
    t.integer  "number_of_fousegroups"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "floors", force: :cascade do |t|
    t.integer  "number"
    t.integer  "gross_area"
    t.integer  "livable_area"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "fuilding_id"
  end

  add_index "floors", ["fuilding_id"], name: "index_floors_on_fuilding_id"

  create_table "fousegroups", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "style"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "neighborhood_id"
  end

  add_index "fousegroups", ["neighborhood_id"], name: "index_fousegroups_on_neighborhood_id"

  create_table "fouses", force: :cascade do |t|
    t.text     "name"
    t.integer  "number_of_rooms"
    t.integer  "number_of_bathrooms"
    t.integer  "area"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "floor_id"
    t.integer  "user_id"
  end

  add_index "fouses", ["floor_id"], name: "index_fouses_on_floor_id"
  add_index "fouses", ["user_id"], name: "index_fouses_on_user_id"

  create_table "fuildings", force: :cascade do |t|
    t.string   "name"
    t.integer  "floor_count"
    t.integer  "lot_area"
    t.integer  "gross_area"
    t.integer  "livable_area"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "fousegroup_id"
    t.integer  "developer_id"
  end

  add_index "fuildings", ["developer_id"], name: "index_fuildings_on_developer_id"
  add_index "fuildings", ["fousegroup_id"], name: "index_fuildings_on_fousegroup_id"

  create_table "neighborhoods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "city_id"
  end

  add_index "neighborhoods", ["city_id"], name: "index_neighborhoods_on_city_id"

  create_table "photos", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "photos", ["user_id"], name: "index_photos_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.integer  "phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "neighborhood_id"
  end

  add_index "users", ["neighborhood_id"], name: "index_users_on_neighborhood_id"

end

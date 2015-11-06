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

ActiveRecord::Schema.define(version: 20151105000853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "floors", force: :cascade do |t|
    t.integer  "number"
    t.integer  "gross_area"
    t.integer  "livable_area"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "fuilding_id"
  end

  add_index "floors", ["fuilding_id"], name: "index_floors_on_fuilding_id", using: :btree

  create_table "fousegroups", force: :cascade do |t|
    t.string   "name"
    t.string   "community_type"
    t.string   "style"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "neighborhood_id"
    t.integer  "popularity"
  end

  add_index "fousegroups", ["neighborhood_id"], name: "index_fousegroups_on_neighborhood_id", using: :btree

  create_table "fouses", force: :cascade do |t|
    t.string   "name"
    t.integer  "number_of_rooms"
    t.integer  "number_of_bathrooms"
    t.integer  "area"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "floor_id"
    t.integer  "user_id"
  end

  add_index "fouses", ["floor_id"], name: "index_fouses_on_floor_id", using: :btree
  add_index "fouses", ["user_id"], name: "index_fouses_on_user_id", using: :btree

  create_table "fuildings", force: :cascade do |t|
    t.string   "name"
    t.integer  "gross_area"
    t.integer  "lot_area"
    t.integer  "livable_area"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "fousegroup_id"
    t.integer  "user_id"
  end

  add_index "fuildings", ["fousegroup_id"], name: "index_fuildings_on_fousegroup_id", using: :btree
  add_index "fuildings", ["user_id"], name: "index_fuildings_on_user_id", using: :btree

  create_table "likes", force: :cascade do |t|
    t.integer  "likable_id"
    t.string   "likable_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "likes", ["likable_type", "likable_id"], name: "index_likes_on_likable_type_and_likable_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "neighborhoods", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neighborhoods_users", id: false, force: :cascade do |t|
    t.integer "user_id",         null: false
    t.integer "neighborhood_id", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "url"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.boolean  "is_main"
  end

  add_index "photos", ["imageable_type", "imageable_id"], name: "index_photos_on_imageable_type_and_imageable_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "email"
    t.string   "phone"
    t.string   "account_type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "floors", "fuildings"
  add_foreign_key "fousegroups", "neighborhoods"
  add_foreign_key "fouses", "floors"
  add_foreign_key "fouses", "users"
  add_foreign_key "fuildings", "fousegroups"
  add_foreign_key "fuildings", "users"
  add_foreign_key "likes", "users"
end

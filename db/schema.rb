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

ActiveRecord::Schema.define(version: 20181012013340) do

  create_table "administrators", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.date "admission"
    t.date "departure"
    t.integer "residential_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["residential_id"], name: "index_administrators_on_residential_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historicals", force: :cascade do |t|
    t.string "id_user"
    t.float "collection"
    t.date "month"
    t.float "administration_value"
    t.float "discount"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_historicals_on_user_id"
  end

  create_table "machines", force: :cascade do |t|
    t.float "accumulated"
    t.integer "inserted"
    t.string "id_user"
    t.date "month"
    t.integer "historical_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["historical_id"], name: "index_machines_on_historical_id"
  end

  create_table "neighbors", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "residential_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["residential_id"], name: "index_neighbors_on_residential_id"
  end

  create_table "residentials", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "name_bank"
    t.float "bank_account"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_users", force: :cascade do |t|
    t.string "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_type_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "type"
    t.string "department"
    t.integer "points"
    t.integer "residential_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["residential_id"], name: "index_users_on_residential_id"
  end

end

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

ActiveRecord::Schema.define(version: 20191102201022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "all_data", id: false, force: :cascade do |t|
    t.text "sr_type"
    t.text "status"
    t.datetime "sr_create_date"
    t.datetime "date_closed"
    t.decimal "resolution", precision: 6, scale: 2
    t.decimal "overdue", precision: 6, scale: 2
    t.text "combined"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_carts_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cart_number1"
    t.integer "cart_number2"
    t.integer "cart_number3"
    t.string "address"
    t.string "phone"
    t.integer "taxid"
    t.integer "customerid"
    t.integer "address_number"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.string "username"
    t.index "lower((email)::text)", name: "index_customers_on_lower_email"
    t.index "lower((first_name)::text) varchar_pattern_ops", name: "index_customers_on_lower_first_name_varchar_pattern_ops"
    t.index "lower((last_name)::text) varchar_pattern_ops", name: "index_customers_on_lower_last_name_varchar_pattern_ops"
    t.index ["address"], name: "index_customers_on_address", unique: true
    t.index ["customerid"], name: "index_customers_on_customerid", unique: true
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["phone"], name: "index_customers_on_phone", unique: true
  end

  create_table "newresidentcontainer", id: false, force: :cascade do |t|
    t.text "combined"
    t.text "sr_type"
    t.date "sr_create_date"
  end

  create_table "newresidentcontainer2", id: false, force: :cascade do |t|
    t.text "combined"
    t.text "sr_type"
    t.date "sr_create_date"
  end

  create_table "orders", id: false, force: :cascade do |t|
    t.bigint "csn"
    t.text "sr_type"
    t.text "status"
    t.date "sr_create_date"
    t.date "date_closed"
    t.float "resolution_time"
    t.float "overdue"
    t.text "combined"
  end

  create_table "recyclingcartrepairorreplace", id: false, force: :cascade do |t|
    t.text "combined"
    t.text "sr_type"
    t.datetime "sr_create_date"
  end

  create_table "recyclingnew", id: false, force: :cascade do |t|
    t.text "combined"
    t.text "sr_type"
    t.date "sr_create_date"
  end

  create_table "recyclingpnewcount", id: false, force: :cascade do |t|
    t.text "combined"
    t.bigint "Number of Incidents"
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

  add_foreign_key "carts", "customers"
end

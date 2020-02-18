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

ActiveRecord::Schema.define(version: 2020_02_17_163628) do

  create_table "parts", force: :cascade do |t|
    t.string "sku"
    t.string "description"
    t.integer "on_hand", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vendor_id"
    t.index ["vendor_id"], name: "index_parts_on_vendor_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technicians", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "avatar"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "group"
    t.datetime "start_date"
    t.datetime "leave_date"
    t.string "email"
    t.boolean "vehicle_operator"
    t.integer "hourly_labor_rate_cents"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "number"
    t.string "group"
    t.string "year"
    t.string "make"
    t.string "model"
    t.string "trim"
    t.string "color"
    t.string "vtype"
    t.string "fuel_type"
    t.string "current_meter"
    t.datetime "current_meter_date"
    t.string "status"
    t.string "VIN"
    t.string "license_plate"
    t.string "registration_state"
    t.string "ownership"
    t.string "service_costs"
    t.string "fuel_costs"
    t.string "other_costs"
    t.string "cost_meter"
    t.string "meter_usage"
    t.string "purchase_price"
    t.datetime "purchase_date"
    t.datetime "warranty_expiration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "current_meter_value"
    t.string "primary_meter_usage_per_day"
    t.string "total_service_cost"
    t.string "total_fuel_cost"
    t.string "cost_per_meter"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "telephone"
    t.string "email"
    t.string "sales_rep"
    t.string "account_no"
    t.string "active", default: "t"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workorders", force: :cascade do |t|
    t.integer "vehicle_id"
    t.integer "technician_id"
    t.string "description"
    t.string "parts_subtotal"
    t.string "labor_subtotal"
    t.string "total"
    t.string "vehicle_miles_in"
    t.integer "status_id"
    t.datetime "work_start"
    t.datetime "work_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["status_id"], name: "index_workorders_on_status_id"
    t.index ["technician_id"], name: "index_workorders_on_technician_id"
    t.index ["vehicle_id"], name: "index_workorders_on_vehicle_id"
  end

end

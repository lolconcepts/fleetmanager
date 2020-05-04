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

ActiveRecord::Schema.define(version: 2020_05_04_185410) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "telephone"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conditions", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dvirs", force: :cascade do |t|
    t.integer "company_id"
    t.integer "vehicle_id"
    t.integer "odometer"
    t.integer "end_mileage"
    t.integer "start_mileage"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "condition_id"
    t.string "signature"
    t.boolean "leaks", default: false
    t.boolean "wires", default: false
    t.boolean "belts", default: false
    t.boolean "oil", default: false
    t.boolean "coolant", default: false
    t.boolean "battery", default: false
    t.boolean "transmission", default: false
    t.boolean "noise", default: false
    t.boolean "guages", default: false
    t.boolean "switches", default: false
    t.boolean "horn", default: false
    t.boolean "defrosters", default: false
    t.boolean "wipers", default: false
    t.boolean "stop_arm", default: false
    t.boolean "mirrors", default: false
    t.boolean "brakes", default: false
    t.boolean "service_door", default: false
    t.boolean "emergency_equipment", default: false
    t.boolean "first_aid", default: false
    t.boolean "stairs", default: false
    t.boolean "interior", default: false
    t.boolean "floor", default: false
    t.boolean "emergency_door", default: false
    t.boolean "lights", default: false
    t.boolean "front_right_wheel", default: false
    t.boolean "windshield", default: false
    t.boolean "front_left_tire", default: false
    t.boolean "exhaust", default: false
    t.boolean "left_side", default: false
    t.boolean "left_rear_tire", default: false
    t.boolean "rear", default: false
    t.boolean "tail_pipe", default: false
    t.boolean "right_rear_tire", default: false
    t.boolean "right_side", default: false
    t.boolean "drivers_seat", default: false
    t.boolean "directionals", default: false
    t.boolean "clutch", default: false
    t.boolean "steering", default: false
    t.boolean "wheelchair_lift", default: false
    t.boolean "condition", default: false
    t.integer "driver"
    t.index ["company_id"], name: "index_dvirs_on_company_id"
    t.index ["condition_id"], name: "index_dvirs_on_condition_id"
    t.index ["vehicle_id"], name: "index_dvirs_on_vehicle_id"
  end

  create_table "inspection_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inspections", force: :cascade do |t|
    t.string "description"
    t.text "instructions"
    t.integer "inspection_type_id"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inspection_type_id"], name: "index_inspections_on_inspection_type_id"
  end

  create_table "issues", force: :cascade do |t|
    t.integer "vehicle_id"
    t.integer "inspection_id"
    t.string "evidence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inspection_id"], name: "index_issues_on_inspection_id"
    t.index ["vehicle_id"], name: "index_issues_on_vehicle_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "workorder_id"
    t.integer "part_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_id"], name: "index_line_items_on_part_id"
    t.index ["workorder_id"], name: "index_line_items_on_workorder_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "sku"
    t.string "description"
    t.integer "on_hand", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vendor_id"
    t.string "cost", default: "0"
    t.string "category"
    t.string "part_manufacturer_name"
    t.string "manufacturer_part_number"
    t.index ["vendor_id"], name: "index_parts_on_vendor_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "driver"
    t.string "vehicle"
    t.string "odometer"
    t.string "signature"
    t.string "notes"
    t.boolean "satisfactory", default: false
    t.boolean "boolean", default: false
    t.boolean "leaks", default: false
    t.boolean "wires", default: false
    t.boolean "belts", default: false
    t.boolean "oil", default: false
    t.boolean "coolant", default: false
    t.boolean "battery", default: false
    t.boolean "transmission", default: false
    t.boolean "noise", default: false
    t.boolean "guages", default: false
    t.boolean "switches", default: false
    t.boolean "horn", default: false
    t.boolean "defrosters", default: false
    t.boolean "wipers", default: false
    t.boolean "stop_arm", default: false
    t.boolean "mirrors", default: false
    t.boolean "brakes", default: false
    t.boolean "service_door", default: false
    t.boolean "emergency_equipment", default: false
    t.boolean "first_aid", default: false
    t.boolean "stairs", default: false
    t.boolean "interior", default: false
    t.boolean "floor", default: false
    t.boolean "emergency_door", default: false
    t.boolean "lights", default: false
    t.boolean "front_right_wheel", default: false
    t.boolean "windshield", default: false
    t.boolean "front_left_tire", default: false
    t.boolean "exhaust", default: false
    t.boolean "left_side", default: false
    t.boolean "left_rear_tire", default: false
    t.boolean "rear", default: false
    t.boolean "tail_pipe", default: false
    t.boolean "right_rear_tire", default: false
    t.boolean "right_side", default: false
    t.boolean "drivers_seat", default: false
    t.boolean "directionals", default: false
    t.boolean "parking_brake", default: false
    t.boolean "clutch", default: false
    t.boolean "steering", default: false
    t.boolean "wheelchair_lift", default: false
    t.boolean "condition", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

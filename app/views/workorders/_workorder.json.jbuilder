json.extract! workorder, :id, :vehicle_id, :technician_id, :description, :parts_subtotal, :labor_subtotal, :total, :vehicle_miles_in, :status_id, :work_start, :work_end, :created_at, :updated_at
json.url workorder_url(workorder, format: :json)

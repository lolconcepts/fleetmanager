json.extract! vehicle, :id, :number, :group, :year, :make, :model, :trim, :color, :type, :fuel_type, :current_meter, :current_meter_date, :status, :VIN, :license_plate, :registration_state, :ownership, :service_costs, :fuel_costs, :other_costs, :cost_meter, :meter_usage, :purchase_price, :purchase_date, :warranty_expiration, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)

json.extract! technician, :id, :fname, :lname, :avatar, :active, :created_at, :updated_at
json.url technician_url(technician, format: :json)

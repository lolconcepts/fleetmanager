json.extract! report, :id, :driver, :vehicle, :odometer, :signature, :notes, :satisfactory, :created_at, :updated_at
json.url report_url(report, format: :json)

class CreateVehicles < ActiveRecord::Migration[5.2]
  def up
    create_table :vehicles do |t|
      t.string :number
      t.string :group
      t.string :year
      t.string :make
      t.string :model
      t.string :trim
      t.string :color
      t.string :type
      t.string :fuel_type
      t.string :current_meter
      t.datetime :current_meter_date
      t.string :status
      t.string :VIN
      t.string :license_plate
      t.string :registration_state
      t.string :ownership
      t.string :service_costs
      t.string :fuel_costs
      t.string :other_costs
      t.string :cost_meter
      t.string :meter_usage
      t.string :purchase_price
      t.datetime :purchase_date
      t.datetime :warranty_expiration

      t.timestamps
    end
  end
  def down
    drop_table :vehicles
  end
end

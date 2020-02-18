class AddStuffToVehicle < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :name, :string
    add_column :vehicles, :current_meter_value, :string
    add_column :vehicles, :primary_meter_usage_per_day, :string
    add_column :vehicles, :total_service_cost, :string
    add_column :vehicles, :total_fuel_cost, :string
    add_column :vehicles, :cost_per_meter, :string
  end
end

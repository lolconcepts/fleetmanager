class RenamebooleanparkingBrake < ActiveRecord::Migration[5.2]
  def change
  	rename_column :reports, :booleanparking_brake, :parking_brake
  end
end

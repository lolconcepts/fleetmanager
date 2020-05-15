class AddParkingBrakeNotesToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :parking_brakes_notes, :string
  end
end

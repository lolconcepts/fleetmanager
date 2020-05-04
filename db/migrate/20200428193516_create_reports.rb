class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :driver
      t.string :vehicle
      t.string :odometer
      t.string :signature
      t.string :notes
      t.boolean :satisfactory, :boolean, default: false
      t.boolean :leaks, :boolean, default: false
      t.boolean :wires, :boolean, default: false
      t.boolean :belts, :boolean, default: false
      t.boolean :oil, :boolean, default: false
      t.boolean :coolant, :boolean, default: false
      t.boolean :battery, :boolean, default: false
      t.boolean :transmission, :boolean, default: false
      t.boolean :noise, :boolean, default: false
      t.boolean :guages, :boolean, default: false
      t.boolean :switches, :boolean, default: false
      t.boolean :horn, :boolean, default: false
      t.boolean :defrosters, :boolean, default: false
      t.boolean :wipers, :boolean, default: false
      t.boolean :stop_arm, :boolean, default: false
      t.boolean :mirrors, :boolean, default: false
      t.boolean :brakes, :boolean, default: false
      t.boolean :service_door, :boolean, default: false
      t.boolean :emergency_equipment, :boolean, default: false
      t.boolean :first_aid, :boolean, default: false
      t.boolean :stairs, :boolean, default: false
      t.boolean :interior, :boolean, default: false
      t.boolean :floor, :boolean, default: false
      t.boolean :emergency_door, :boolean, default: false
      t.boolean :lights, :boolean, default: false
      t.boolean :front_right_wheel, :boolean, default: false
      t.boolean :windshield, :boolean, default: false
      t.boolean :front_left_tire, :boolean, default: false
      t.boolean :exhaust, :boolean, default: false
      t.boolean :left_side, :boolean, default: false
      t.boolean :left_rear_tire, :boolean, default: false
      t.boolean :rear, :boolean, default: false
      t.boolean :tail_pipe, :boolean, default: false
      t.boolean :right_rear_tire, :boolean, default: false
      t.boolean :right_side, :boolean, default: false
      t.boolean :drivers_seat, :boolean, default: false
      t.boolean :directionals, :booleanparking_brake, default: false
      t.boolean :clutch, :boolean, default: false
      t.boolean :steering, :boolean, default: false
      t.boolean :wheelchair_lift, :boolean, default: false
      t.boolean :condition, :boolean, default: false

      t.timestamps
    end
  end
end

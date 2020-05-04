class AddBoolsToDvir < ActiveRecord::Migration[5.2]
  def change
    add_column :dvirs, :leaks, :boolean, default: false
    add_column :dvirs, :wires, :boolean, default: false
    add_column :dvirs, :belts, :boolean, default: false
    add_column :dvirs, :oil, :boolean, default: false
    add_column :dvirs, :coolant, :boolean, default: false
    add_column :dvirs, :battery, :boolean, default: false
    add_column :dvirs, :transmission, :boolean, default: false
    add_column :dvirs, :noise, :boolean, default: false
    add_column :dvirs, :guages, :boolean, default: false
    add_column :dvirs, :switches, :boolean, default: false
    add_column :dvirs, :horn, :boolean, default: false
    add_column :dvirs, :defrosters, :boolean, default: false
    add_column :dvirs, :wipers, :boolean, default: false
    add_column :dvirs, :stop_arm, :boolean, default: false
    add_column :dvirs, :mirrors, :boolean, default: false
    add_column :dvirs, :brakes, :boolean, default: false
    add_column :dvirs, :service_door, :boolean, default: false
    add_column :dvirs, :emergency_equipment, :boolean, default: false
    add_column :dvirs, :first_aid, :boolean, default: false
    add_column :dvirs, :stairs, :boolean, default: false
    add_column :dvirs, :interior, :boolean, default: false
    add_column :dvirs, :floor, :boolean, default: false
    add_column :dvirs, :emergency_door, :boolean, default: false
    add_column :dvirs, :lights, :boolean, default: false
    add_column :dvirs, :front_right_wheel, :boolean, default: false
    add_column :dvirs, :windshield, :boolean, default: false
    add_column :dvirs, :front_left_tire, :boolean, default: false
    add_column :dvirs, :exhaust, :boolean, default: false
    add_column :dvirs, :left_side, :boolean, default: false
    add_column :dvirs, :left_rear_tire, :boolean, default: false
    add_column :dvirs, :rear, :boolean, default: false
    add_column :dvirs, :tail_pipe, :boolean, default: false
    add_column :dvirs, :right_rear_tire, :boolean, default: false
    add_column :dvirs, :right_side, :boolean, default: false
    add_column :dvirs, :drivers_seat, :boolean, default: false
    add_column :dvirs, :directionals, :booleanparking_brake, default: false
    add_column :dvirs, :clutch, :boolean, default: false
    add_column :dvirs, :steering, :boolean, default: false
    add_column :dvirs, :wheelchair_lift, :boolean, default: false
    add_column :dvirs, :condition, :boolean, default: false
    add_column :dvirs, :sig, :boolean, default: false
  end
end

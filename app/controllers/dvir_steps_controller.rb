class DvirStepsController < ApplicationController
	include Wicked::Wizard
	steps :initial, :leaks, :wires, :belts, :oil, :coolant, :battery, :transmission, :noise, :guages, :switches, :horn, :defrosters, :wipers, :stop_arm, :mirrors, :brakes, :service_door, :emergency_equipment, :first_aid, :stairs, :interior, :floor, :emergency_door, :lights, :front_right_wheel, :windshield, :front_left_tire, :exhaust, :left_side, :left_rear_tire, :rear, :tail_pipe, :right_rear_tire, :right_side, :drivers_seat, :directionals, :parking_brake, :clutch, :steering, :wheelchair_lift, :condition, :signature

	def show
		render_wizard
	end
end

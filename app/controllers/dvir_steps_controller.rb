class DvirStepsController < ApplicationController
	include Wicked::Wizard
	#steps :leaks, :wires, :belts, :oil, :coolant, :battery, :transmission, :noise, :guages, :switches, :horn, :defrosters, :wipers, :stop_arm, :mirrors, :brakes, :service_door, :emergency_equipment, :first_aid, :stairs, :interior, :floor, :emergency_door, :lights, :front_right_wheel, :windshield, :front_left_tire, :exhaust, :left_side, :left_rear_tire, :rear, :tail_pipe, :right_rear_tire, :right_side, :drivers_seat, :directionals, :parking_brake, :clutch, :steering, :wheelchair_lift, :condition, :signature
	# Consolidated Steps into groups of steps.
	steps :inside_vehicle, :outside_vehicle, :vehicle_safety, :signature
	
	def show
		@report = Report.find(session[:report])
		@company = Company.first
		render_wizard

	case step
  		when :initial
  			@bus = params[:bid] || 9999
  		end
	end

	def update
		@report = Report.find(session[:report])
		@report.update_attributes(report_params)
		render_wizard @report
	end

	private

	def redirect_to_finish_wizard(options = nil, params = nil)
    	redirect_to report_url(session[:report]), notice: "Report Completed"
  	end
	def report_params
      params.require(:report).permit(:driver, :vehicle, :odometer, :signature, :notes, :satisfactory,:leaks, :wires, :belts, :oil, :coolant, :battery, :transmission, :noise, :guages, :switches, :horn, :defrosters, :wipers, :stop_arm, :mirrors, :brakes, :service_door, :emergency_equipment, :first_aid, :stairs, :interior, :floor, :emergency_door, :lights, :front_right_wheel, :windshield, :front_left_tire, :exhaust, :left_side, :left_rear_tire, :rear, :tail_pipe, :right_rear_tire, :right_side, :drivers_seat, :directionals, :parking_brake, :clutch, :steering, :wheelchair_lift, :condition,:leaks_notes,:wires_notes,:belts_notes, :oil_notes, :coolant_notes,:battery_notes,:transmission_notes,:noise_notes,:guages_notes,:switches_notes,:horn_notes,:defrosters_notes,:wipers_notes,:stop_arm_notes,:mirrors_notes,:brakes_notes,:service_door_notes,:emergency_equipment_notes,:first_aid_notes,:stairs_notes,:interior_notes,:floor_notes,:emergency_door_notes,:lights_notes,:front_right_wheel_notes,:windshield_notes,:front_left_tire_notes,:exhaust_notes,:left_side_notes,:left_rear_tire_notes,:rear_notes,:tail_pipe_notes,:right_rear_tire_notes,:right_side_notes,:drivers_seat_notes,:images,images: [])
    end
end

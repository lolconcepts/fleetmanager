module ApplicationHelper

	def dvir_status(satstat)
		if satstat
			return "Satisfactory / SAFE"
		else
			return "Not Satisfactory / UNSAFE"
		end
	end

	def list_issues
		@report = Report.find(session[:report])
		@issues = []
		if @report.drivers_seat
			@issues << "Driver's Seat"
		end
		if @report.guages
			@issues << "Guages"
		end
		if @report.switches
			@issues << "Switches"
		end
		if @report.horn
			@issues << "Horn"
		end
		if @report.defrosters
			@issues << "Defrosters"
		end
		if @report.service_door
			@issues << "Service Door"
		end
		if @report.emergency_equipment
			@issues << "Emergency Equipment"
		end
		if @report.first_aid
			@issues << "First Aid"
		end
		if @report.stairs
			@issues << "Stairs"
		end
		if @report.interior
			@issues << "Interior"
		end
		if @report.floor
			@issues << "Floor"
		end
		if @report.lights
			@issues << "Lights"
		end
		if @report.steering
			@issues << "Steering"
		end
		if @report.wheelchair_lift
			@issues << "Wheelchair Lift"
		end
		if @report.directionals
			@issues << "Directionals"
		end
		if @report.front_left_tire
			@issues << "Front Left Tire"
		end
		if @report.exhaust
			@issues << "Exhaust"
		end
		if @report.left_side
			@issues << "Left Side"
		end
		if @report.left_rear_tire
			@issues << "Left Rear Tire"
		end
		if @report.rear
			@issues << "Rear"
		end
		if @report.tail_pipe
			@issues << "Tail Pipe"
		end
		if @report.right_rear_tire
			@issues << "Right Rear Tire"
		end
		if @report.right_side
			@issues << "Right Side"
		end
		if @report.wipers
			@issues << "Wipers"
		end
		if @report.stop_arm
			@issues << "Stop Arm"
		end
		if @report.mirrors
			@issues << "Mirrors"
		end
		if @report.front_right_wheel
			@issues << "Front Right Wheel"
		end
		if @report.leaks
			@issues << "Leaks"
		end
		if @report.wires
			@issues << "Wires"
		end
		if @report.belts
			@issues << "Belts"
		end
		if @report.oil
			@issues << "Oil"
		end
		if @report.coolant
			@issues << "Coolant"
		end
		if @report.battery
			@issues << "Battery"
		end
		if @report.transmission
			@issues << "Transmission"
		end
		if @report.noise
			@issues << "Noise"
		end
		if @report.parking_brake
			@issues << "Parking Brake"
		end
		if @report.clutch
			@issues << "Clutch"
		end
		if @report.windshield
			@issues << "Windshield"
		end
		return @issues

	end

	def inside_checks
		@report = Report.find(session[:report])
		checks =[@report.drivers_seat,@report.guages,@report.switches,@report.horn,@report.defrosters,@report.service_door,@report.emergency_equipment,@report.first_aid,@report.stairs,@report.interior,@report.floor,@report.lights,@report.steering,@report.wheelchair_lift,@report.directionals]
		checks.each do |c|
			if c
				return '<span class="inline-flex items-center px-2.5 py-0.5 rounded-md text-sm font-medium leading-5 bg-red-100 text-red-800">
            ISSUES
          </span>'
			end
		end
		return '<span class="inline-flex items-center px-2.5 py-0.5 rounded-md text-sm font-medium leading-5 bg-green-100 text-green-800">
            PASS
          </span>'
	end

	def outside_checks
		@report = Report.find(session[:report])
		checks =[@report.front_left_tire,@report.exhaust,@report.left_side,@report.left_rear_tire,@report.rear,@report.tail_pipe,@report.right_rear_tire,@report.right_side,@report.wipers,@report.stop_arm,@report.mirrors,@report.front_right_wheel]
		checks.each do |c|
			if c
				return '<span class="inline-flex items-center px-2.5 py-0.5 rounded-md text-sm font-medium leading-5 bg-red-100 text-red-800">
            ISSUES
          </span>'
			end
		end
		return '<span class="inline-flex items-center px-2.5 py-0.5 rounded-md text-sm font-medium leading-5 bg-green-100 text-green-800">
            PASS
          </span>'
	end


	def safety_checks
		@report = Report.find(session[:report])
		checks =[@report.leaks,@report.wires,@report.belts,@report.oil,@report.coolant,@report.battery,@report.transmission,@report.noise,@report.parking_brake,@report.clutch,@report.windshield]
		checks.each do |c|
			if c
				return '<span class="inline-flex items-center px-2.5 py-0.5 rounded-md text-sm font-medium leading-5 bg-red-100 text-red-800">
            ISSUES
          </span>'
			end
		end
		return '<span class="inline-flex items-center px-2.5 py-0.5 rounded-md text-sm font-medium leading-5 bg-green-100 text-green-800">
            PASS
          </span>'
	end

	def issues_reported
		@report = Report.find(session[:report])
		checks =[@report.drivers_seat,@report.guages,@report.switches,@report.horn,@report.defrosters,@report.service_door,@report.emergency_equipment,@report.first_aid,@report.stairs,@report.interior,@report.floor,@report.lights,@report.steering,@report.wheelchair_lift,@report.directionals,@report.front_left_tire,@report.exhaust,@report.left_side,@report.left_rear_tire,@report.rear,@report.tail_pipe,@report.right_rear_tire,@report.right_side,@report.wipers,@report.stop_arm,@report.mirrors,@report.front_right_wheel,@report.leaks,@report.wires,@report.belts,@report.oil,@report.coolant,@report.battery,@report.transmission,@report.noise,@report.parking_brake,@report.clutch,@report.windshield]
		checks.each do |c|
			if c
				return true
			end
		end
		return false
	end

end

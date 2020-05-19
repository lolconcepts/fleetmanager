module ApplicationHelper

	def dvir_status(satstat)
		if satstat
			return "Satisfactory / SAFE"
		else
			return "Not Satisfactory / UNSAFE"
		end
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

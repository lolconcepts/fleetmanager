class Report < ApplicationRecord
	has_many_attached :images

	def num_issues(val='num')
		# Find number of booleans which are true 
		# and return that number
		@issues = 0
		@issue_text = ['driver','vehicle','odometer','signature','notes','satisfactory','leaks','wires','belts','oil','coolant','battery','transmission','noise','guages','switches','horn','defrosters', 'wipers','stop_arm','mirrors','brakes','service_door','emergency_equipment','first_aid','stairs','interior','floor','emergency_door','lights','front_right_wheel','windshield','front_left_tire','exhaust','left_side','left_rear_tire','rear','tail_pipe','right_rear_tire','right_side', 'drivers_seat','directionals','parking_brake','clutch','steering','wheelchair_lift','condition']
		@issue_attributes = [self.driver, self.vehicle, self.odometer, self.signature, self.notes, self.satisfactory,self.leaks, self.wires, self.belts, self.oil, self.coolant, self.battery, self.transmission, self.noise, self.guages, self.switches, self.horn, self.defrosters, self.wipers, self.stop_arm, self.mirrors, self.brakes, self.service_door, self.emergency_equipment, self.first_aid, self.stairs, self.interior, self.floor, self.emergency_door, self.lights, self.front_right_wheel, self.windshield, self.front_left_tire, self.exhaust, self.left_side, self.left_rear_tire, self.rear, self.tail_pipe, self.right_rear_tire, self.right_side, self.drivers_seat,self.directionals, self.parking_brake, self.clutch, self.steering, self.wheelchair_lift,self.condition]

		@issue_attributes.each do |i|
			if i
				@issues += 1
			end
		end
		if(val == 'num')
			return @issues
		end
		if(val == 'text')
			return @issue_text
		end
	end
end

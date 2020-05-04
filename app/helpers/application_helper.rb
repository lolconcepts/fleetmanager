module ApplicationHelper

	def dvir_status(satstat)
		if satstat
			return "Satisfactory / SAFE"
		else
			return "Not Satisfactory / UNSAFE"
		end
	end
end

class Technician < ApplicationRecord
	require 'csv'
	mount_uploader :avatar, AvatarUploader

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Technician.create! row.to_hash
		end
	end
	def fullname
		return self.fname + " " + self.lname
	end
end

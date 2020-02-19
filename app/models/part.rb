class Part < ApplicationRecord
	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Part.create! row.to_hash
		end
	end
end

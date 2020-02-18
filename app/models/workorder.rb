class Workorder < ApplicationRecord
  belongs_to :vehicle
  belongs_to :technician
  belongs_to :status
  has_many :line_items

  def total
  	total = 0.00
  	if self.line_items
  		self.line_items.each do |item|
  			total += item.part.cost.to_f
  		end
  	end
  	return total.round(2)
  end
end

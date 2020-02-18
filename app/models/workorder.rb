class Workorder < ApplicationRecord
  belongs_to :vehicle
  belongs_to :technician
  belongs_to :status
end

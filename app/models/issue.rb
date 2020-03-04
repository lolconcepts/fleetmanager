class Issue < ApplicationRecord
  belongs_to :vehicle
  belongs_to :inspection
end

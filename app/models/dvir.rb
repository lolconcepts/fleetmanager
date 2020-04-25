class Dvir < ApplicationRecord
  belongs_to :company
  belongs_to :vehicle
  has_many_attached :images
end

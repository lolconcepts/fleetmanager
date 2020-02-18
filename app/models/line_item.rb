class LineItem < ApplicationRecord
  belongs_to :workorder
  belongs_to :part
end

class Size < ApplicationRecord
  belongs_to :colour
  has_many :orders
end

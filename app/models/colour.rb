class Colour < ApplicationRecord
  belongs_to :product
  has_many :sizes
  acts_as_taggable_on :products
end

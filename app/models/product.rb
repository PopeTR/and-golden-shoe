class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :product_type
  belongs_to :category
  has_many :colours
  has_many_attached :images
end

class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :product_type
  belongs_to :category
  has_many :colours
  has_many_attached :images
  acts_as_taggable_on :categories
  acts_as_taggable_on :brands
  acts_as_taggable_on :product_types

  # PG Search functionality
  include PgSearch::Model
  pg_search_scope :search_by_product_category_brand,
      against: [:name, :description],
      associated_against: {
        category: [:name],
        brand: [:name],
      },
      using: {
          tsearch: { prefix: true }
      }
end

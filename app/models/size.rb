class Size < ApplicationRecord
  belongs_to :colour
  has_many :orders
  acts_as_taggable_on :colours

  include PgSearch::Model
  pg_search_scope :search_by_colour,
      against: [:content],
      associated_against: {
        colour: [:name],
      },
      using: {
          tsearch: { prefix: true }
      }
end

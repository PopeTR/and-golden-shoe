class Category < ApplicationRecord
    has_many :products
    
    # include PgSearch::Model
    # pg_search_scope :search_by_category,
    #     against: [:name],
    #     using: {
    #         tsearch: {prefix: true }
    #     }
end

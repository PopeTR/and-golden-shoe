class Order < ApplicationRecord
  belongs_to :size
  belongs_to :user
end

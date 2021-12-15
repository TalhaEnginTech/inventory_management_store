class Product < ApplicationRecord
  belongs_to :supplier
  has_one :line_item
end

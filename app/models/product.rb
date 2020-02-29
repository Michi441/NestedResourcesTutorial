class Product < ApplicationRecord
    has_many :product_variants
    accepts_nested_attributes_for :product_variants, allow_destroy: true
end

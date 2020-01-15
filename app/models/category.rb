class Category < ApplicationRecord
    has_many :post

    validates :category_name, presence: true, uniqueness: true
end

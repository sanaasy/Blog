class Post < ApplicationRecord
    validates :title, :content, :date, presence: true
    validates :title, uniqueness: { case_sensitive: false }

    belongs_to :user
    has_one :category
end

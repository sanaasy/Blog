class Post < ApplicationRecord
    has_many :taggings
    has_many :tags, through: :taggings
    has_many :comments
    belongs_to :category
    belongs_to :user

    validates :title, :content, :date, presence: true
    validates :title, uniqueness: { case_sensitive: false }
end

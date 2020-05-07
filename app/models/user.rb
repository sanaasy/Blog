class User < ApplicationRecord
    validates :last_name, :first_name, :email, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

    has_many :posts
    has_many :comments
end

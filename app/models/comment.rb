class Comment < ApplicationRecord
    validates :date_c, :comment, presence: true
end

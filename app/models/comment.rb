class Comment < ApplicationRecord
    has_one :blog
    has_one :user, through: :blog
end

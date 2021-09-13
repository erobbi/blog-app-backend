class Comment < ApplicationRecord
  belongs_to :blog
  has_one :user, through: :blog
end

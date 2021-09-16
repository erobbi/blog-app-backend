class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  def who_wrote_comment 
    writer = User.find(self.user_id)
    writer.username
  end
end

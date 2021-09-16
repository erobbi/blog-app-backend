class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :who_wrote_comment 
  has_one :user
  has_one :blog
end

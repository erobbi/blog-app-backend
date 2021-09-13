class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :img_url, :likes
  has_one :user
end

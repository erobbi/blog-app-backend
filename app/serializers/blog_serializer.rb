class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :img_url, :likes, :created_at
  has_one :user
  has_many :comments
end

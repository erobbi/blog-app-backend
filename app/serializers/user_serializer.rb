class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :img_url, :name, :birthdate, :email
  has_many :blogs
  has_many :comments
end

class User < ApplicationRecord
    has_many :blogs, dependent: :destroy
    has_many :comments, through: :blogs
    has_secure_password
    validates :username, uniqueness: {case_sensitive: false}
    validates :email, uniqueness: {case_sensitive: false}
    # validates :email,
    # format: { with: /^(.+)@(.+)$/, message: "Email invalid"  },
    #           uniqueness: { case_sensitive: false },
    #           length: { minimum: 4, maximum: 254 }
end

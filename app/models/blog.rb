class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  def show
    byebug
  end
end

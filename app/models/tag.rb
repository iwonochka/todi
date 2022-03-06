class Tag < ApplicationRecord
  has_many :user_tags
  has_many :users, through: :user_tags
  validates :name, presence: true

  def index
    @tags = Tag.all
  end
end

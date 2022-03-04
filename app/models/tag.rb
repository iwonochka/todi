class Tag < ApplicationRecord
  has_many :user_tags
  has_many :users, through: :user_tags

  has_many :event_tags
  has_many :events, through: :event_tags

  validates :name, presence: true
end

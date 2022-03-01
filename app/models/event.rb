class Event < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :starting_date, presence: true
  validates :ending_date, presence: true
  validates :starting_time, presence: true
  validates :ending_time, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :free, presence: true
  validates :price, presence: true
end

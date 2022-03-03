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
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

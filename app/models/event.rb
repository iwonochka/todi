class Event < ApplicationRecord
  belongs_to :user
  has_many :participants, dependent: :destroy
  has_many :users, through: :participants
  # LINK TO USER PROFILEPIC + TO EVENT PHOTO?
  has_one_attached :photo

  validates :name, presence: true
  # validates :starting_date, presence: true
  # validates :ending_date, presence: true
  # validates :starting_time, presence: true
  # validates :ending_time, presence: true
  # validates :description, presence: true
  # validates :address, presence: true
  # validates :free, presence: true
  # validates :price, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  #Enabling search action
  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description],
    using: {
      tsearch: { prefix: true }
    }
end

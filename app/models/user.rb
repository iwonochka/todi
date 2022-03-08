class User < ApplicationRecord
  has_one_attached :photo
  has_many :user_tags
  has_many :tags, through: :user_tags
  has_many :participants
  has_many :events, through: :participants
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  # validates :username, presence: true, uniqueness: true
  # validates :location, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  #Enabling search action
  include PgSearch::Model
  pg_search_scope :search_by_username_and_location,
    against: [ :username, :location],
    using: {
      tsearch: { prefix: true }
    }
end

class User < ApplicationRecord
  has_one_attached :photo
  has_many :participants
  has_many :events, through: :participants
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, uniqueness: { case_sensitive: false }
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
  TAGS = ["English", "German", "French", "Arabic", "Russian", "Polish", "LGBTQ+", "single-parent", "new parent",
          "45+ parent", "autism", "ADHD", "diabetic", "down syndrome", "yoga", "vegan", "biking"]
end

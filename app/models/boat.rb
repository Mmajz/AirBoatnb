class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :location, :title, :price, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end

class Boat < ApplicationRecord
  belongs_to :user
  has_many :booking
end

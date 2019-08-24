class Event < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  geocoded_by :address
  after_validation :geocode
end

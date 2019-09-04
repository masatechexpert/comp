class Event < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :title, length: { maximum: 40 }
  validates :description, length: { maximum: 500 }
  validates :start_date, presence: true
  geocoded_by :address
  after_validation :geocode
end

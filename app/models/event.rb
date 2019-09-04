class Event < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :title, length: { maximum: 40 }, presence: true
  validates :description, length: { maximum: 500 }, presence: true
  validates :start_date, presence: true
  geocoded_by :address
  after_validation :geocode
end

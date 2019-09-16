class Todo < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :title, length: { maximum: 15 }, presence: true
  validates :description, length: { maximum: 105 }, presence: true
end

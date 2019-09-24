class Message < ApplicationRecord
  belongs_to :group, optional: true
  belongs_to :user, optional: true

  validates :content, presence: true, unless: :image?
  validates :content, length: { maximum: 100 }, presence: true
end

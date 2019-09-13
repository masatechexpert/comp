class BulletinBoard < ApplicationRecord
  belongs_to :group
  belongs_to :user

  validates :massage, presence: true, unless: :image?

end

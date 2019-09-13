class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
<<<<<<< HEAD
  has_many :bulletin_boards
=======
>>>>>>> group
  accepts_nested_attributes_for :group_users
end

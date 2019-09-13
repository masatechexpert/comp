class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events
  has_many :todos
<<<<<<< Updated upstream
=======
  has_many :group_users
  has_many :groups, through: :group_users
  has_many :bulletin_boards
>>>>>>> Stashed changes
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, dependent: :destroy
  has_many :todos, dependent: :destroy
  has_many :group_users
  has_many :groups, through: :group_users
  has_many :messages

  mount_uploader :avatar, AvatarUploader
  
  validates :name, presence: true
  validates :email, presence: true
end

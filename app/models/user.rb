class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         attachment :profile_image

  has_many :books, dependent: :destroy

  validates :name, presence: true
  validates :name, length: { minimum: 1 }
  validates :profile, length: { maximum: 200 }

end

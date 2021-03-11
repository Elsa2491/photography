class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true
  has_many :countries, dependent: :destroy
  has_many :regions, through: :countries
  has_many :photos, through: :regions
end

class Country < ApplicationRecord
  belongs_to :user
  has_many :regions, dependent: :destroy
  has_many :photos, through: :regions
  has_one_attached :image
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :image, presence: true
end

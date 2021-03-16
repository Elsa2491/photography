class Region < ApplicationRecord
  belongs_to :country
  has_many :photos, dependent: :destroy
  has_one_attached :image
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :image, presence: true
end

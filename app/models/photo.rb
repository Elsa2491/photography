class Photo < ApplicationRecord
  belongs_to :region
  has_one_attached :image
  validates :title, presence: true
  validates :image, presence: true
end

class Photo < ApplicationRecord
  belongs_to :region
  has_one_attached :image
  validates :image, presence: true
end

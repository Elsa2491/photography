class Photo < ApplicationRecord
  belongs_to :region
  validates :title, presence: true
  validates :description, presence: true
end

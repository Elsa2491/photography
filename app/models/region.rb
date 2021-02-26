class Region < ApplicationRecord
  belongs_to :country
  has_many :photos, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
end

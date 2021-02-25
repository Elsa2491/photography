class Region < ApplicationRecord
  belongs_to :country
  validates :title, presence: true
  validates :description, presence: true
end

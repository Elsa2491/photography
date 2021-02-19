class Region < ApplicationRecord
  validates :title, presence: true
  belongs_to :country
end

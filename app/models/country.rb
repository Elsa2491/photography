class Country < ApplicationRecord
  validates :title, :description, presence: true
  has_many :regions, dependent: :destroy
end

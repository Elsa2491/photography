class Country < ApplicationRecord
  has_many :regions, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
end

class Country < ApplicationRecord
  belongs_to :user
  has_many :regions, dependent: :destroy
  has_many :photos, through: :regions
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
end

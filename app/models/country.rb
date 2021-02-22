class Country < ApplicationRecord
  validates :title, presence: { message: "Can't be blank" }, uniqueness: true
  validates :description, presence: { message: "Can't be blank" }
  has_many :regions, dependent: :destroy
end

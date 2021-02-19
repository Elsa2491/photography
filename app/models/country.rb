class Country < ApplicationRecord
  validates :title, :description, presence: true
end

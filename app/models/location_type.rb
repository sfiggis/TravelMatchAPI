class LocationType < ApplicationRecord
  validates :name, presence: true
  has_many :locations
end

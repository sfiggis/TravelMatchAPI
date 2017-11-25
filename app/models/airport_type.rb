class AirportType < ApplicationRecord
  has_many :airports
  validates :name, presence: true
end

class Airport < ApplicationRecord
  belongs_to :airport_type
  belongs_to :location
  has_many :codes, as: :codeable
  validates :name, presence: true
end

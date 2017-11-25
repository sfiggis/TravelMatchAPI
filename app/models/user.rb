class User < ApplicationRecord
  has_many :journey_profiles
  has_many :journeys, through: :journey_profiles
  belongs_to :location
  accepts_nested_attributes_for :location
  validates :email, presence: true
end

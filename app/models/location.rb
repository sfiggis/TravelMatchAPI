class Location < ApplicationRecord
  belongs_to :location_type
  has_many  :sub_locations,
            class_name:     'Location',
            foreign_key:    'parent_location_id'
  belongs_to :parent_location, required: false, class_name: name
  has_many :codes, as: :codeable
  validates :name, presence: true
  validates :parent_location, presence: true, if: :parent_required?

  def dollars_per_day
    @usa = 57_466.787_113_2348
    return 100 + ((gdp_ppp - @usa) / @usa * 100).round(2) if gdp_ppp
  end

  private

  def parent_required?
    return !location_type.orphanable if location_type
    true
  end
end

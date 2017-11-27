require 'rails_helper'

RSpec.describe Types::AirportTypeType do
  it { has_fields_for_attributes_of(AirportType) }
  it { has_fields_for_associations_of(AirportType) }
end

require 'rails_helper'

RSpec.describe Types::AirportType do
  it { has_fields_for_attributes_of(Airport) }
  it { has_fields_for_associations_of(Airport) }
end

require 'rails_helper'

RSpec.describe Types::LocationType do
  it { has_fields_for_attributes_of(Location) }
  it { has_fields_for_associations_of(Location) }
end

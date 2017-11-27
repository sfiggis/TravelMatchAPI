require 'rails_helper'

RSpec.describe Types::JourneyProfileType do
  it { has_fields_for_attributes_of(JourneyProfile) }
  it { has_fields_for_associations_of(JourneyProfile) }
end

require 'rails_helper'

RSpec.describe Types::JourneyType do
  it { has_fields_for_attributes_of(Journey) }
  it { has_fields_for_associations_of(Journey) }
end

require 'rails_helper'

RSpec.describe Types::LocationTypeType do
  it { has_fields_for_attributes_of(LocationType) }
  it { has_fields_for_associations_of(LocationType) }
end

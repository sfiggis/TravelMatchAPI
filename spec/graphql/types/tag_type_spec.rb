require 'rails_helper'

RSpec.describe Types::TagType do
  it { has_fields_for_attributes_of(Tag) }
  it { has_fields_for_associations_of(Tag) }
end

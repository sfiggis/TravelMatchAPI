require 'rails_helper'

RSpec.describe Types::CodeType do
  it { has_fields_for_attributes_of(Code) }
  it { has_fields_for_associations_of(Code) }
end

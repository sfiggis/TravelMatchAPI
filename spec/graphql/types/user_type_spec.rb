require 'rails_helper'

RSpec.describe Types::UserType do
  it { has_fields_for_attributes_of(User) }
  it { has_fields_for_associations_of(User) }
end

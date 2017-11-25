require 'rails_helper'

RSpec.describe User, type: :model do
  it { should belong_to(:location) }
  it { should validate_presence_of(:email) }
  it { should accept_nested_attributes_for(:location) }
  it { should have_many(:journey_profiles) }
  it { should have_many(:journeys) }
end

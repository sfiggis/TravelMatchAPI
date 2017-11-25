require 'rails_helper'

RSpec.describe JourneyProfile, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:journeys) }
end

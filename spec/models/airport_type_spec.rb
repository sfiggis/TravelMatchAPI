require 'rails_helper'

RSpec.describe AirportType, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:airports) }
end
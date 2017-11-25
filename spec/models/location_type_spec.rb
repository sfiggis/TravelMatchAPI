require 'rails_helper'

RSpec.describe LocationType, type: :model do
  it { should have_many(:locations) }
  it { should validate_presence_of(:name) }
end

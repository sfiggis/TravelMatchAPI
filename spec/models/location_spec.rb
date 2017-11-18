require 'rails_helper'

RSpec.describe Location, type: :model do
  it { should belong_to(:parent_location) }
  it { should belong_to(:location_type) }
  it { should validate_presence_of(:name) }
  it { should have_many(:codes) }

  describe 'with orphanable location type' do
    let(:location_type) { FactoryBot.create(:location_type, orphanable: true) }
    it 'is valid without a parent' do
      location = described_class.new(name: 'my location', location_type: location_type)
      expect(location).to be_valid
    end
  end

  describe 'with non-orphanable location type' do
    let(:location_type) { FactoryBot.create(:location_type, orphanable: false) }
    let(:parent_location) { FactoryBot.create(:location) }
    it 'is invalid withot a parent' do
      location = described_class.new(name: 'my location', location_type: location_type)
      expect(location).to be_invalid
    end

    it 'is valid with a parent' do
      location = described_class.new(name: 'my location',
                                  location_type: location_type,
                                  parent_location_id: parent_location.id)
      expect(location).to be_valid
    end
  end
end
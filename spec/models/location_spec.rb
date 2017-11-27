require 'rails_helper'

RSpec.describe Location, type: :model do
  it { should belong_to(:parent_location) }
  it { should belong_to(:location_type) }
  it { should validate_presence_of(:name) }
  it { should have_many(:codes) }
  it { should have_many(:tags) }

  describe 'with orphanable location type' do
    let(:location_type) { FactoryBot.create(:location_type, orphanable: true) }
    it 'is valid without a parent' do
      location = described_class.new(
        name:          'my location',
        location_type: location_type
      )
      expect(location).to be_valid
    end
  end

  describe 'with non-orphanable location type' do
    let(:location_type) { FactoryBot.create(:location_type, orphanable: false) }
    let(:parent_location) { FactoryBot.create(:location) }
    it 'is invalid withot a parent' do
      location = described_class.new(
        name:          'my location',
        location_type: location_type
      )
      expect(location).to be_invalid
    end

    it 'is valid with a parent' do
      location = described_class.new(
        name:               'my location',
        location_type:      location_type,
        parent_location_id: parent_location.id
      )
      expect(location).to be_valid
    end
  end

  describe 'budget' do
    let(:location) { FactoryBot.create(:location, gdp_ppp: 52_436.0564) }
    let(:usa) { FactoryBot.create(:location, gdp_ppp: 57_466.787_113_2348) }
    let(:home) { FactoryBot.create(:location, gdp_ppp: 46_572.639_54837) }

    it 'sets a cost per day on the country in dollars' do
      expect(usa.dollars_per_day).to eq 100.00
      expect(location.dollars_per_day).to eq 91.25
    end
  end
end

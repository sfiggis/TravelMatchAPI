require 'rails_helper'

Rspec.describe TravelMatchAPISchema do
  let(:query_string) { {} }
  let(:context) { {} }
  let(:variables) { {} }
  let(:result) { schema_result(query_string, context, variables) }
  before :each do
    DatabaseCleaner.clean_with(:truncation)
    @location_type = create(:location_type)
    @location_type2 = create(:location_type)
    @location = create(:location, location_type_id: @location_type.id)
    @ocation2 = create(:location, location_type_id: @location_type.id)
  end

  describe 'searching for all location types' do
    let(:query_string) { %({ location_types { id name locations { id name }}  }) }
    it 'shows an array of all location types' do
      new_result = result['data']['location_types']
      expect(new_result[0]['name']).to eq @location_type.name
      expect(new_result.count).to eq 2
      expect(new_result[0]['locations'][0]['name']).to eq @location.name
    end
  end

  describe 'searching for location type by id' do
    let(:query_string) { %|{ location_type(id: "#{@location_type.id}") { id name locations { id name }}  }| }
    it 'shows a specific location type with locations' do
      new_result = result['data']['location_type']
      expect(new_result['name']).to eq @location_type.name
      expect(new_result['locations'][0]['name']).to eq @location.name
    end
  end
end

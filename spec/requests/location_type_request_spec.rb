require 'rails_helper'

Rspec.describe TravelMatchAPISchema do
  let(:query_string) { {} }
  let(:context) { {} }
  let(:variables) { {} }
  let(:result) { schema_result(query_string, context, variables) }
  before :each do
    DatabaseCleaner.clean_with(:truncation)
    @location = create(:location)
    @location2 = create(:location)
  end

  describe 'searching for all locations' do
    let(:query_string) { %({ locations { id name }  }) }
    it 'shows an array of all locations' do
      new_result = result['data']['locations']
      expect(new_result[0]['name']).to eq @location.name
      expect(new_result.count).to eq 2
    end
  end

  describe 'searching for location by id' do
    let(:query_string) { %|{ location(id: "#{@location.id}") { id name }  }| }
    it 'shows a specific location' do
      new_result = result['data']['location']
      expect(new_result['name']).to eq @location.name
      expect(new_result.count).to eq 2
    end
  end
end
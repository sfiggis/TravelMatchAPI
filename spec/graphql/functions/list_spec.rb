require 'rails_helper'

Rspec.describe Functions::List do
  class GenericModel < ActiveRecord::Base; end
  let(:model) { GenericModel }
  let(:type) { :generic_return_type }
  let(:f) { described_class.new(model: model, type: type) }

  before do
    @model = GenericModel
    @type =  :generic_return_type
    @f = described_class.new(model: @model, type: @type)
  end

  it 'has the correct return type' do
    expect(f.type).to eq(type)
  end

  it 'has a description relating to the model' do
    expect(f.description).to eq('List all Generic Model records')
  end
end

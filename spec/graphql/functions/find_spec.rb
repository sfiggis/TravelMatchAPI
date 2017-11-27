require 'rails_helper'

Rspec.describe Functions::Find do
  class GenericModel < ActiveRecord::Base; end
  let(:model) { GenericModel }
  let(:type) { :generic_return_type }
  let(:f) { described_class.new(model: model, type: type) }

  before do
    @model = GenericModel
    @type =  :generic_return_type
    @f = described_class.new(model: @model, type: @type)
  end

  it 'has an id argument' do
    expect(f.arguments['id'].type).to eq(GraphQL::ID_TYPE)
  end

  it 'has the correct return type' do
    expect(f.type).to eq(type)
  end

  it 'has a description relating to the model' do
    expect(f.description).to eq("Find Generic Model")
  end
end


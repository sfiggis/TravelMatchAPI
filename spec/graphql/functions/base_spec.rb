require 'rails_helper'

Rspec.describe Functions::Base do
  class GenericModel < ActiveRecord::Base; end
  Types::GenericModelType = :assumed_return_type

  let(:base) { Class.new(described_class) }

  it 'uses the return type provided' do
    return_type = :specific_return_type
    function = base.new(model: GenericModel, type: return_type)
    expect(function.type).to eq(return_type)
  end

  it 'assumes the return type is ModelType if not explicitely provided' do
    function = base.new(model: GenericModel)
    expect(function.type).to eq(Types::GenericModelType)
  end

  it 'returns the model' do
    function = base.new(model: GenericModel)
    expect(function.model).to eq(GenericModel)
  end
end

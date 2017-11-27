module Types
  AirportTypeType = GraphQL::ObjectType.define do
    name 'AirportTypeType'
    description 'An airport type'
    field :id, types.ID
    field :name, types.String
    field :airports, types[Types::AirportType]
  end
end

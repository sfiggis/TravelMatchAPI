module Types
  LocationTypeType = GraphQL::ObjectType.define do
    name 'LocationTypeType'
    description 'A location type'
    field :id, types.ID
    field :name, types.String
    field :orphanable, types.Boolean
    field :locations, types[Types::LocationType]
  end
end

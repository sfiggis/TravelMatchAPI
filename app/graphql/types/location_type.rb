module Types
  LocationType = GraphQL::ObjectType.define do
    name 'LocationType'
    description 'A location'
    field :id, types.ID
    field :name, types.String
    field :location_type, LocationTypeType
    field :longitude, types.Float
    field :latitude, types.Float
    field :sub_locations, LocationType
    field :parent_location, LocationType
    field :wiki, types.String
    field :codes, types[Types::CodeType]
    field :location_type_id, types.ID
    field :tags, types[Types::TagType]
    field :parent_location_id, types.ID
    field :content, types.String
    field :gdp_ppp, types.Float
  end
end

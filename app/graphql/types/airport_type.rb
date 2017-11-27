module Types
  AirportType = GraphQL::ObjectType.define do
    name 'AirportType'
    description 'A location type'
    field :id, types.ID
    field :name, types.String
    field :airport_type, AirportType
    field :airport_type_id, types.ID
    field :longitude, types.Float
    field :latitude, types.Float
    field :location, LocationType
    field :codes, CodeType
    field :scheduled_service, types.Boolean
    field :elevation, types.Float
    field :wiki, types.String
    field :location_id, types.ID
  end
end

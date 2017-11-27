module Types
  UserType = GraphQL::ObjectType.define do
    name 'UserType'
    description 'A user type'
    field :id, types.ID
    field :first_name, types.String
    field :family_name, types.String
    field :email, types.String
    field :journey_profiles, types[Types::JourneyProfileType]
    field :journeys, types[Types::JourneyType]
    field :location, LocationType
    field :location_id, types.ID
  end
end

module Types
  JourneyType = GraphQL::ObjectType.define do
    name 'JourneyType'
    description 'A journey type'
    field :id, types.ID
    field :origin, LocationType
    field :destination, LocationType
    field :departure_date, DateType
    field :return_date, DateType
    field :origin_id, types.ID
    field :destination_id, types.ID
    field :journey_profile_id, types.ID
    field :journey_profile, JourneyProfileType
  end
end

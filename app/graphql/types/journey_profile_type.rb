module Types
  JourneyProfileType = GraphQL::ObjectType.define do
    name 'JourneyProfileType'
    description 'A journey profile type'
    field :id, types.ID
    field :user_id, types.ID
    field :user, UserType
    field :budget, types.Float
    field :journeys, JourneyType
    field :duration, types.Int
  end
end

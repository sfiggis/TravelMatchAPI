module Unions
  CodeableUnion = GraphQL::UnionType.define do
    name 'CodeableUnion'
    description 'Codes for multiple types'
    possible_types [Types::LocationType, Types::AirportType]
  end
end

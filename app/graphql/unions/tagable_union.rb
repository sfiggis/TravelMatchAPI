module Unions
  TagableUnion = GraphQL::UnionType.define do
    name 'TagableUnion'
    description 'Tags for multiple types'
    possible_types [LocationType]
  end
end

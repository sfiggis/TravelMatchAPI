module Types
  TagType = GraphQL::ObjectType.define do
    name 'TagType'
    description 'A tag type'
    field :id, types.ID
    field :name, types.String
    field :tagable, ::Unions::TagableUnion
    field :tagable_id, types.ID
    field :tagable_type, types.String
  end
end

module Types
  CodeType = GraphQL::ObjectType.define do
    name 'CodeType'
    description 'A code type'
    field :id, types.ID
    field :name, types.String
    field :value, types.String
    field :codeable, ::Unions::CodeableUnion
    field :codeable_type, types.String
    field :codeable_id, types.ID
  end
end

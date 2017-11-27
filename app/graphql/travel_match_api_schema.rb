TravelMatchAPISchema = GraphQL::Schema.define do
  mutation(Types::MutationType)
  query(Types::QueryType)
  resolve_type ->(_type, obj, _ctx) { "Types::#{obj.class.name}Type".constantize }
end

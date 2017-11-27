TravelMatchAPISchema = GraphQL::Schema.define do
  # mutation(Types::MutationType)
  query(Types::QueryType)
  resolve_type ->(type, obj, ctx) { "Types::#{obj.class.name}Type".constantize }
end

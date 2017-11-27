Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :locations,
      function: Functions::List.new(model: Location)
  field :location,
      function: Functions::Find.new(model: Location)

  field :location_types,
    function: Functions::List.new(model: ::LocationType)
  field :location_type,
    function: Functions::Find.new(model: ::LocationType)

end

module Types
  DateType = GraphQL::ScalarType.define do
    name 'Date'
    description 'Date since epoch in seconds'

    coerce_input ->(value, _ctx) { Date.at(Float(value)) }
    coerce_result ->(value, _ctx) { value.to_f }
  end
end

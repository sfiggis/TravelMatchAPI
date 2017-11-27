module Functions
  class Base < GraphQL::Function
    attr_reader(:model)

    def initialize(model:, type: nil)
      @model = model
      @type = type
    end

    def type
      @type || "Types::#{@model.name}Type".constantize
    end

    def arg_name
      model.model_name.singular.camelize(:lower)
    end
  end
end
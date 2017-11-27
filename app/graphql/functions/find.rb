module Functions
  class Find < Base
    def description
      "Find #{model.model_name.human.titleize}"
    end

    def arguments
      { 'id' => GraphQL::Argument.define(name: 'id', type: GraphQL::ID_TYPE) }
    end

    def call(_obj, args, _ctx)
      id = args[:id]
      model.find(id)
    end
  end
end

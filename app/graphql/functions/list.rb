module Functions
  class List < Base
    def description
      "List all #{model.model_name.human.titleize} records"
    end

    def type
      @type || ("Types::#{@model.name}Type".constantize).to_list_type
    end

    def call(_obj, _args, _ctx)
      model.all
    end
  end
end

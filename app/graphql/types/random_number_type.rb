module Types
  RandomNumberType = GraphQL::ObjectType.define do
    name 'RandomNumber'
    field :number, types.String do
      resolve ->(obj, _args, _ctx) do
        return obj
      end
    end
  end
end

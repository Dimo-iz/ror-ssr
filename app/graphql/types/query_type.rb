require 'graphql'
require 'graphql/batch'

Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

  field :randomNumber, Types::RandomNumberType do
    description 'random number'
    resolve ->(obj, args, _ctx) { Random.rand(1..100) }
  end
end

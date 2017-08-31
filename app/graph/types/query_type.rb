QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "Query root for the schema"

  field :post do
    type PostType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Post.find(args[:id])
    }
  end
end

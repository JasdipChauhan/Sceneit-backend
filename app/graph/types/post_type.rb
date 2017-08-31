PostType = GraphQL::ObjectType.define do
  name "Post"
  description "A Post"
  field :title, types.String
  field :description, types.String
  field :likes, types.Int
  field :user do
    type UserType
    resolve -> (post, args, ctx) {
      post.user
    }
  end
end

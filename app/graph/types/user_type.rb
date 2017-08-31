UserType = GraphQL::ObjectType.define do
  name "User"
  description "The author of posts"
  field :email, types.String
end

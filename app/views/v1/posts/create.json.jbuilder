json.data do
  json.user do
    json.partial! 'v1/posts/post', post: @post
  end
end

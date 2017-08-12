json.data do
  json.array! @posts do |post|
    json.partial! 'v1/posts/post', post: post
  end
end

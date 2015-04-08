json.array!(@posts) do |post|
  json.extract! post, :id, :contenido, :titulo, :likes
  json.url post_url(post, format: :json)
end

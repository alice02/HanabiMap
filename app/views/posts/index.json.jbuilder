json.array!(@posts) do |post|
  json.extract! post, :id, :name, :comment, :date, :latitude, :longitude
  json.url post_url(post, format: :json)
end

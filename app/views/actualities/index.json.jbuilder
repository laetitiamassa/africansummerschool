json.array!(@actualities) do |actuality|
  json.extract! actuality, :id, :title, :description, :content
  json.url actuality_url(actuality, format: :json)
end

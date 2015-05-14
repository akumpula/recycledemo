json.array!(@listings) do |listing|
  json.extract! listing, :id, :name, :description, :room_id, :age_id
  json.url listing_url(listing, format: :json)
end

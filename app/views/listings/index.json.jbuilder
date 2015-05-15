json.array!(@listings) do |listing|
  json.extract! listing, :id, :name, :description, :Price, :photo, :room_id, :age_id
  json.url listing_url(listing, format: :json)
end

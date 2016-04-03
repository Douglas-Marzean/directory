json.array!(@places) do |place|
  json.extract! place, :id, :name, :address, :address_2, :city, :state, :zip, :phone, :website, :facebook, :twitter, :google, :yelp, :bbb, :description, :user_id
  json.url place_url(place, format: :json)
end

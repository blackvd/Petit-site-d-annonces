json.extract! advertisement, :id, :title, :content, :price, :state, :created_at, :updated_at
json.url advertisement_url(advertisement, format: :json)

json.extract! item, :id, :name, :unit_price, :available, :created_at, :updated_at
json.url item_url(item, format: :json)

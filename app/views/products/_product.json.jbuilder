json.extract! product, :id, :name, :description, :condition_id, :price, :created_at, :updated_at
json.url product_url(product, format: :json)

json.extract! eco_product, :id, :user_id, :name, :description, :condition_id, :precio, :available, :created_at, :updated_at
json.url eco_product_url(eco_product, format: :json)

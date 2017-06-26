json.extract! product, :id, :title, :description, :image, :price, :category_id, :available, :, :created_at, :updated_at
json.url product_url(product, format: :json)

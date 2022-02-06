json.extract! cart, :id, :quantity, :totalprice, :good_id, :customer_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)

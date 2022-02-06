json.extract! order, :id, :orderDate, :status, :quantity, :totalPrice, :cart_id, :customer_id, :good_id, :created_at, :updated_at
json.url order_url(order, format: :json)

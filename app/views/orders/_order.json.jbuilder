json.extract! order, :id, :order_date, :status, :customers_id, :created_at, :updated_at
json.url order_url(order, format: :json)

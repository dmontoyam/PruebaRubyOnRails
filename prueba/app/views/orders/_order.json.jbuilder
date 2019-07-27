json.extract! order, :id, :client_id, :date, :subtotal, :total, :created_at, :updated_at
json.url order_url(order, format: :json)

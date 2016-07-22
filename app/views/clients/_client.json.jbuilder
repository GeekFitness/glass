json.extract! client, :id, :name, :email, :duration, :address, :phone, :comments, :created_at, :updated_at
json.url client_url(client, format: :json)
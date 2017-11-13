json.extract! client, :id, :title, :description, :slave, :image_uid, :url, :created_at, :updated_at
json.url client_url(client, format: :json)
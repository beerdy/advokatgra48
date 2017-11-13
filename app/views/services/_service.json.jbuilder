json.extract! service, :id, :title, :description, :slave, :image_uid, :url, :created_at, :updated_at
json.url service_url(service, format: :json)
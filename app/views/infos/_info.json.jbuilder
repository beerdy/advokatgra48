json.extract! info, :id, :title, :description, :slave, :image_uid, :url, :created_at, :updated_at
json.url info_url(info, format: :json)
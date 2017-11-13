json.extract! contact, :id, :title, :phone, :address, :description, :slave, :image_uid, :url, :map, :created_at, :updated_at
json.url contact_url(contact, format: :json)
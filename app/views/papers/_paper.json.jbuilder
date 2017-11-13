json.extract! paper, :id, :title, :description, :slave, :image_uid, :image_name, :url, :created_at, :updated_at
json.url paper_url(paper, format: :json)
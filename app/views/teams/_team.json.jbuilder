json.extract! team, :id, :title, :description, :image_uid, :created_at, :updated_at
json.url team_url(team, format: :json)
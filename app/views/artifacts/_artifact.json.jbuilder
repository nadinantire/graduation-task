json.extract! artifact, :id, :name, :description, :image, :amount, :category, :created_at, :updated_at
json.url artifact_url(artifact, format: :json)

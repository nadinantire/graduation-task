json.extract! transaction, :id, :user_id, :artifact_id, :amaunt, :currency, :status, :details, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)

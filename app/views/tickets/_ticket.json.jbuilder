json.extract! ticket, :id, :phone, :exhibition_id, :user_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)

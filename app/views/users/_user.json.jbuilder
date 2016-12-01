json.extract! user, :id, :Name, :Password, :created_at, :updated_at
json.url user_url(user, format: :json)
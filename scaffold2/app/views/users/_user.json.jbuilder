json.extract! user, :id, :name, :email, :logged_in_at, :created_at, :updated_at
json.url user_url(user, format: :json)
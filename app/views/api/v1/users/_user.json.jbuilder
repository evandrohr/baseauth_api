json.extract! user, :created_at, :updated_at
json.url api_v1_user_url(user, format: :json)

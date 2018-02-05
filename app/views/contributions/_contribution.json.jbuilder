json.extract! contribution, :id, :title, :user_name, :overview, :category, :update, :created_at, :updated_at
json.url contribution_url(contribution, format: :json)

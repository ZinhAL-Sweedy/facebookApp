json.extract! comment, :id, :title, :user_id, :content, :image, :created_at, :updated_at
json.url comment_url(comment, format: :json)

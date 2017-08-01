json.extract! post, :id, :title, :user_id, :integer, :content, :comment_id, :created_at, :updated_at
json.url post_url(post, format: :json)

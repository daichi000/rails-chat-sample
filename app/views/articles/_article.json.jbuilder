json.extract! article, :id, :user_id, :title, :detail, :image, :category, :body, :created_at, :updated_at
json.url article_url(article, format: :json)
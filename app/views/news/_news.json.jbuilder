json.extract! news, :id, :user_id, :title, :content, :link, :foto1, :foto2, :foto3, :created_at, :updated_at
json.url news_url(news, format: :json)

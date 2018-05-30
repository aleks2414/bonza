json.extract! video, :id, :user_id, :link, :created_at, :updated_at
json.url video_url(video, format: :json)

json.extract! note, :id, :title, :body, :active, :user_id, :created_at, :updated_at
json.url note_url(note, format: :json)

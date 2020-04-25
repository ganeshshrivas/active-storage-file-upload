json.extract! attachment, :id, :file, :title, :created_at, :updated_at
json.url attachment_url(attachment, format: :json)

json.extract! contact, :id, :nombre, :email, :comentario, :created_at, :updated_at
json.url contact_url(contact, format: :json)

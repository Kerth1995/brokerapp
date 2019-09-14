json.extract! documento_identidad, :id, :nombre, :descripcion, :created_at, :updated_at
json.url documento_identidad_url(documento_identidad, format: :json)

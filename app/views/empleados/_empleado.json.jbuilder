json.extract! empleado, :id, :documento_id, :privilegio_id, :numero_documento, :nombre, :apellido_paterno, :apellido_materno, :estado, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)

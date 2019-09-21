json.extract! empleado, :id, :documento_id, :numero_documento, :nombre, :apellido_paterno, :apellido_materno, :privilegio_id, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)

json.extract! empleado, :id, :id_tipo_documento, :numero_documento, :nombre, :apellido_paterno, :apellido_materno, :id_privilegio, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)

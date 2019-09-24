json.extract! tarea, :id, :codigo_tarea, :nombre, :descripcion, :estado, :rubro, :created_at, :updated_at
json.url tarea_url(tarea, format: :json)

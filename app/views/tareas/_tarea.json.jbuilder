json.extract! tarea, :id, :id_tarea, :nombre, :descripcion, :estado, :created_at, :updated_at
json.url tarea_url(tarea, format: :json)

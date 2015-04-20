json.array!(@tareas) do |tarea|
  json.extract! tarea, :id, :nombre, :descripcion, :estado_tarea_id, :elemento_id
  json.url tarea_url(tarea, format: :json)
end

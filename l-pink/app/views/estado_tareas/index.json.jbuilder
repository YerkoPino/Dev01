json.array!(@estado_tareas) do |estado_tarea|
  json.extract! estado_tarea, :id, :nombre, :descripcion
  json.url estado_tarea_url(estado_tarea, format: :json)
end

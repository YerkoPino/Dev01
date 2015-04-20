json.array!(@usuario_tareas) do |usuario_tarea|
  json.extract! usuario_tarea, :id, :responsable, :tarea_id, :user_id
  json.url usuario_tarea_url(usuario_tarea, format: :json)
end

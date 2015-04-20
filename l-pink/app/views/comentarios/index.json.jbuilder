json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :descripcion, :tarea_id
  json.url comentario_url(comentario, format: :json)
end

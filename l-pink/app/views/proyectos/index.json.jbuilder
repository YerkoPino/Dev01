json.array!(@proyectos) do |proyecto|
  json.extract! proyecto, :id, :nombre, :descripcion, :fecha_inicio, :fecha_fin
  json.url proyecto_url(proyecto, format: :json)
end

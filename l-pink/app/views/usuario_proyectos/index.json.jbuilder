json.array!(@usuario_proyectos) do |usuario_proyecto|
  json.extract! usuario_proyecto, :id, :proyecto_id, :user_id
  json.url usuario_proyecto_url(usuario_proyecto, format: :json)
end

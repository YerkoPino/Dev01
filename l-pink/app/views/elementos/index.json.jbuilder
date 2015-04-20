json.array!(@elementos) do |elemento|
  json.extract! elemento, :id, :nombre, :descripcion, :estado, :tipo, :fecha_compromiso, :contexto, :tema_id, :elemento_id
  json.url elemento_url(elemento, format: :json)
end

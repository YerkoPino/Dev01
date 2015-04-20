json.array!(@usuario_elementos) do |usuario_elemento|
  json.extract! usuario_elemento, :id, :responsable, :elemento_id, :user_id
  json.url usuario_elemento_url(usuario_elemento, format: :json)
end

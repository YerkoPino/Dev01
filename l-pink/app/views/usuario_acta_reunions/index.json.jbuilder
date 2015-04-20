json.array!(@usuario_acta_reunions) do |usuario_acta_reunion|
  json.extract! usuario_acta_reunion, :id, :acta_reunion_id, :user_id, :secretario
  json.url usuario_acta_reunion_url(usuario_acta_reunion, format: :json)
end

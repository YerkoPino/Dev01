json.array!(@temas) do |tema|
  json.extract! tema, :id, :nombre, :descripcion, :estado, :acta_reunion_id
  json.url tema_url(tema, format: :json)
end

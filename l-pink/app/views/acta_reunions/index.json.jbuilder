json.array!(@acta_reunions) do |acta_reunion|
  json.extract! acta_reunion, :id, :fecha, :correlativo, :proyecto_id
  json.url acta_reunion_url(acta_reunion, format: :json)
end

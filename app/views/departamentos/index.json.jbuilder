json.array!(@departamentos) do |departamento|
  json.extract! departamento, :id, :descr
  json.url departamento_url(departamento, format: :json)
end

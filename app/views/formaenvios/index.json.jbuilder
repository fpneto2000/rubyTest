json.array!(@formaenvios) do |formaenvio|
  json.extract! formaenvio, :id, :descr, :prazo_dias
  json.url formaenvio_url(formaenvio, format: :json)
end

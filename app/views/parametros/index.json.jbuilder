json.array!(@parametros) do |parametro|
  json.extract! parametro, :id, :cnpj, :razao_social, :imposto
  json.url parametro_url(parametro, format: :json)
end

json.array!(@setors) do |setor|
  json.extract! setor, :id, :descr
  json.url setor_url(setor, format: :json)
end

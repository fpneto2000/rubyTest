json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :login, :senha, :nivel, :perComiss
  json.url usuario_url(usuario, format: :json)
end

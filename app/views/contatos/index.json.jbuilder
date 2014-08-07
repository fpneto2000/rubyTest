json.array!(@contatos) do |contato|
  json.extract! contato, :id, :nome, :email, :tel, :participante_id, :setor_id
  json.url contato_url(contato, format: :json)
end

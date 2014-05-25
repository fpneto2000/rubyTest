json.array!(@finalidades) do |finalidade|
  json.extract! finalidade, :id, :descr, :vlrgate, :vlrcomissmark, :vlrmarketing, :vlrembalagem, :vlrencargos
  json.url finalidade_url(finalidade, format: :json)
end

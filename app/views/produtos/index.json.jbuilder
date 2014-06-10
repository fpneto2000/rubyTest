json.array!(@produtos) do |produto|
  json.extract! produto, :id, :descr, :descr_externa, :barras, :ncm, :marg_min, :marg_med, :marg_max, :unid_med, :end_gondola, :garantia_meses, :departamento_id, :finalidade_id
  json.url produto_url(produto, format: :json)
end

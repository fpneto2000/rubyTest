json.array!(@entrada_nfs) do |entrada_nf|
  json.extract! entrada_nf, :id, :numero, :serie_nf, :participante_id, :data_emiss, :data_entrada, :vlr_frete, :vlr_encargos, :vlr_desc, :vlr_dif_aliq, :tot_icms, :tot_produtos, :tot_nf
  json.url entrada_nf_url(entrada_nf, format: :json)
end

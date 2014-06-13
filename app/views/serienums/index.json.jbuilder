json.array!(@serienums) do |serienum|
  json.extract! serienum, :id, :numero, :custo_liq, :preco_venda, :estoque, :larg_ce, :altura_ce, :profund_ce, :larg_se, :altura_se, :profund_se, :peso_ce, :peso_se, :produto_id, :fornecedor_id, :codigo_forn, :fabricante_id
  json.url serienum_url(serienum, format: :json)
end

class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :numero
      t.decimal :custo_liq
      t.decimal :preco_venda
      t.decimal :estoque
      t.decimal :larg_ce
      t.decimal :altura_ce
      t.decimal :profund_ce
      t.decimal :larg_se
      t.decimal :altura_se
      t.decimal :profund_se
      t.decimal :peso_ce
      t.decimal :peso_se
      t.integer :produto_id
      t.integer :participante_id
      t.string :codigo_forn
      t.integer :fabricante_id
      t.decimal :vlr_ipi
      t.decimal :vlr_icms
      t.decimal :vlr_st
      t.decimal :vlr_dif_aliq
      t.decimal :vlr_frete
      t.decimal :vlr_desc
      t.decimal :vlr_desc_rateado
      t.decimal :vlr_encargos

      t.timestamps
    end
  end
end

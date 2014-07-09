class CreateEntradaNfs < ActiveRecord::Migration
  def change
    create_table :entrada_nfs do |t|
      t.integer :numero
      t.string :serie_nf, limit:5
      t.integer :participante_id
      t.date :data_emiss
      t.date :data_entrada
      t.decimal :vlr_frete
      t.decimal :vlr_encargos
      t.decimal :vlr_desc
      t.decimal :vlr_dif_aliq
      t.decimal :tot_icms
      t.decimal :tot_produtos
      t.decimal :tot_nf

      t.timestamps
    end
  end
end

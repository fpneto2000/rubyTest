class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :descr, limit:80
      t.string :descr_externa, limit:60
      t.string :barras, limit:20
      t.string :ncm, limit:12
      t.decimal :marg_min
      t.decimal :marg_med
      t.decimal :marg_max
      t.string :unid_med, limit:5
      t.string :end_gondola, limit:20
      t.integer :garantia_meses
      t.integer :departamento_id
      t.integer :finalidade_id

      t.timestamps
    end
  end
end

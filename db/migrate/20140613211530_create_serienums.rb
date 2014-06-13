class CreateSerienums < ActiveRecord::Migration
  def change
    create_table :serienums do |t|
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
      t.integer :fornecedor_id
      t.string :codigo_forn
      t.integer :fabricante_id

      t.timestamps
    end
  end
end

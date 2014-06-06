class CreateParametros < ActiveRecord::Migration
  def change
    create_table :parametros do |t|
      t.decimal :cnpj, limit:14
      t.string :razao_social, limit:65
      t.decimal :imposto

      t.timestamps
    end
  end
end

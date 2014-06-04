class CreateParticipantes < ActiveRecord::Migration
  def change
    create_table :participantes do |t|
      t.string :tipo, limit:1
      t.string :nome, limit:60
      t.decimal :cnpj, limit:14
      t.string :ie, limit:20
      t.string :ender, limit:100
      t.string :numero, limit:10
      t.string :bairro, limit:60
      t.string :cidade, limit:100
      t.string :uf, limit:2
      t.string :cep, limit:9
      t.string :ender_cob, limit:100
      t.string :numero_cob, limit: 10
      t.string :bairro_cob, limit: 60
      t.string :cidade_cob, limit:100
      t.string :uf_cob, limit:2
      t.string :cep_cob, limit:9
      t.string :ender_entrega, limit:100
      t.string :numero_entrega, limit:10
      t.string :bairro_entrega, limit:60
      t.string :cidade_entrega, limit:100
      t.string :uf_entrega, limit:2
      t.string :cep_entrega, limit:9
      t.string :tel1, limit:20
      t.string :tel2, limit:20
      t.string :tel3, limit:20
      t.string :email_nfe, limit:60
      t.string :email_contato, limit:60
      t.string :cli_ou_for, limit:1

      t.timestamps
    end
  end
end

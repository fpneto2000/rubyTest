class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome, limit:60
      t.string :email, limit:60
      t.string :tel, limit:20
      t.integer :participante_id
      t.integer :setor_id

      t.timestamps
    end
  end
end

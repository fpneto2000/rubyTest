class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :login
      t.string :senha
      t.integer :nivel
      t.float :perComiss

      t.timestamps
    end
  end
end

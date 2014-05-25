class CreateFinalidades < ActiveRecord::Migration
  def change
    create_table :finalidades do |t|
      t.string :descr
      t.float :vlrgate
      t.float :vlrcomissmark
      t.float :vlrmarketing
      t.float :vlrembalagem
      t.float :vlrencargos

      t.timestamps
    end
  end
end

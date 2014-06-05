class CreateFormaenvios < ActiveRecord::Migration
  def change
    create_table :formaenvios do |t|
      t.string :descr, limit:45
      t.integer :prazo_dias

      t.timestamps
    end
  end
end

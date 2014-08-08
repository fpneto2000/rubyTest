class CreateFormarecs < ActiveRecord::Migration
  def change
    create_table :formarecs do |t|
      t.string :descr

      t.timestamps
    end
  end
end

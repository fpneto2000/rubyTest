class CreateFormapagtos < ActiveRecord::Migration
  def change
    create_table :formapagtos do |t|
      t.string :descr, limit:45

      t.timestamps
    end
  end
end

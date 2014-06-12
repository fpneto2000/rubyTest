class ChangeParticipantesCnpjTypeField < ActiveRecord::Migration
  def change
    change_column :participantes, :cnpj, :string
  end
end

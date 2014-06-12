class ChangeParticipantesCnpjSize < ActiveRecord::Migration
  def change
    change_column :participantes, :cnpj, :string, limit:20
  end
end

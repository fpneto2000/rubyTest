class AddTransportadoraToParticipantes < ActiveRecord::Migration
  def change
    add_column :participantes, :transportadora, :string, limit:1
    add_column :participantes, :fantasia, :string, limit:60
    add_column :participantes, :site, :string
    add_column :participantes, :optante_simples, :string, limit:1
    add_column :participantes, :data_relacao, :date
    add_column :participantes, :inativo, :string, limit:1
    add_column :participantes, :obs_relacoes, :string, limit:150
    add_column :participantes, :indicado_por, :string, limit:40
    add_column :participantes, :observacao, :string, limit:150
    add_column :participantes, :complemento, :string, limit:60
    add_column :participantes, :complemento_cob, :string, limit:60
    add_column :participantes, :complemento_entrega, :string, limit:60
    add_column :participantes, :obs_ender, :string, limit:150
    add_column :participantes, :obs_ender_cob, :string, limit:150
    add_column :participantes, :obs_ender_entrega, :string, limit:150
  end
end

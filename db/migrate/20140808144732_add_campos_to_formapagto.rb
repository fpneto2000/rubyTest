class AddCamposToFormapagto < ActiveRecord::Migration
  def change
    add_column :formapagtos, :recebimento, :string, limit:1
    add_column :formapagtos, :pagamento, :string, limit:1
    add_column :formapagtos, :pagto_nfe, :integer 
    add_column :formapagtos, :qt_parcelas, :integer
    add_column :formapagtos, :dias_apos_prim_parc, :integer
    add_column :formapagtos, :dias_entre_parc, :integer
    add_column :formapagtos, :prorrogar_para, :string, limit:1
    add_column :formapagtos, :dia_fixo, :integer
    add_column :formapagtos, :dias_uteis_corridos, :string, limit:1
    add_column :formapagtos, :receb_parc_id, :integer
    add_column :formapagtos, :receb_entrada_id, :integer
  end
end

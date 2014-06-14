class ChangeParametrosCnpjTypeField < ActiveRecord::Migration
  def change
    change_column :parametros, :cnpj, :string, limit:20
  end
end

class AddDepartamentoIdToDepratamentos < ActiveRecord::Migration
  def change
    add_column :departamentos, :departamento_id, :integer
  end
end

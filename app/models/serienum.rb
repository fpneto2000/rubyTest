class Serienum < ActiveRecord::Base
  belongs_to :produto
  belongs_to :fornecedor, :class_name=>'Participante', foreign_key: 'fornecedor_id'
  belongs_to :fabricante, :class_name=>'Participante', foreign_key: 'fabricante_id'

end

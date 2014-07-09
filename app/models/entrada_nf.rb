class EntradaNf < ActiveRecord::Base
  belongs_to :participante
  validates :numero,:presence => { message: " - Campo obrigatorio"}, length: { maximum: 10 }
  validates :serie_nf,:presence => { message: " - Campo obrigatorio"}, length: { maximum: 5 }
  validates :data_emiss,:presence => { message: " - Campo obrigatorio"}
  validates :data_entrada,:presence => { message: " - Campo obrigatorio"}

  validates_numericality_of :tot_produtos, :greater_than => 0, :message => " - Total de produtos Invalido"
  validates_numericality_of :tot_nf, :greater_than => 0, :message => " - Total da Nota invalido"

  validates_numericality_of :vlr_frete, :greater_than => -1, :message => " - Valor do Frete Invalido"
  validates_numericality_of :vlr_encargos, :greater_than => -1, :message => " - Valor Encargos Invalido"
  validates_numericality_of :vlr_desc, :greater_than => -1, :message => " - Valor do Desconto Invalido"
  validates_numericality_of :vlr_dif_aliq, :greater_than => -1, :message => " - Valor da Dif.Aliq. Invalido"
  validates_numericality_of :tot_icms, :greater_than => -1, :message => " - Total do ICMS Invalido"


end

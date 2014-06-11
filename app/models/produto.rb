class Produto < ActiveRecord::Base
    has_many :series
    belongs_to :departamento
    belongs_to :finalidade
    
    validates :descr,:presence => { message: " - Campo obrigatorio"}, :uniqueness => {:message => "Ja existe o departamento"}, length: { maximum: 80 }
    validates :descr_externa,:presence => { message: " - Campo obrigatorio"}, length: { maximum: 60 }
    validates :barras, length: { maximum: 20 }
    validates :ncm, length: { maximum: 12 }
    validates :unid_med, length: { maximum: 5 }
    validates :end_gondola, length: { maximum: 20 }
    validates :departamento_id,:presence => { message: " - Campo obrigatorio"}
    validates :finalidade_id,:presence => { message: " - Campo obrigatorio"}
    validates_numericality_of :finalidade_id, :greater_than => 0, :message => " - Finalidade Invalida"
    validates_numericality_of :departamento_id, :greater_than => 0, :message => " - Departamento invalido"
    validates_numericality_of :garantia_meses, :greater_than => -1, :message => " - Valor deve ser maior ou igual a zero"
    validates_numericality_of :marg_min, :greater_than => -1, :message => " - Valor deve ser maior ou igual a zero"
    validates_numericality_of :marg_med, :greater_than => -1, :message => " - Valor deve ser maior ou igual a zero"
    validates_numericality_of :marg_max, :greater_than => -1, :message => " - Valor deve ser maior ou igual a zero"


end

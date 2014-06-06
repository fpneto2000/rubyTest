class Parametro < ActiveRecord::Base
      validates :razao_social, :presence => { message: " - Campo obrigatorio"}, :uniqueness => true
      validates :cnpj, :presence => { :message => " - Campo obrigatorio"}
      validates_numericality_of :imposto, :greater_than => -1, :message => " - Valor deve ser maior ou igual a zero"
end

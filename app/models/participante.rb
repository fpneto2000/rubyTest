class Participante < ActiveRecord::Base
  has_many :series
  has_many :fabrica, :class_name=>'Serie',:foreign_key => "fabricante_id"
  
  validates :nome, :presence => true, :uniqueness => false, length: { maximum: 100 }
  validates :cnpj, :presence => true, :uniqueness => true, length: { maximum: 20 }
  validates :ie, :presence => true, length: { maximum: 20 }
  validates :ender, length: { maximum: 100 }
  validates :numero, length: { maximum: 10 }
  validates :bairro, length: { maximum: 60 }
  validates :cidade, length: { maximum: 100 }
  validates :uf, length: { maximum: 2 }
  validates :cep, length: { maximum: 9 }

  validates :ender_cob, length: { maximum: 100 }
  validates :numero_cob, length: { maximum: 10 }
  validates :bairro_cob, length: { maximum: 60 }
  validates :cidade_cob, length: { maximum: 100 }
  validates :uf_cob, length: { maximum: 2 }
  validates :cep_cob, length: { maximum: 9 }

  validates :ender_entrega, length: { maximum: 100 }
  validates :numero_entrega, length: { maximum: 10 }
  validates :bairro_entrega, length: { maximum: 60 }
  validates :cidade_entrega, length: { maximum: 100 }
  validates :uf_entrega, length: { maximum: 2 }
  validates :cep_entrega, length: { maximum: 9 }

  def descr_caracteristica
       if self.cli_ou_for == 'C'
          'Cliente'
       elsif self.cli_ou_for == 'F'
          'Fornecedor'
       else
          'Cliente/Fornecedor'
       end
  end

  def descr_tipo
       if self.tipo == 'F'
          'Pessoa Fisica'
       else
          'Pessoa Juridica'
       end
  end

end

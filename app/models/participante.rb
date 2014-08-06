class Participante < ActiveRecord::Base
  has_many :fabrica, :class_name=>'Serienum',:foreign_key => "fabricante_id"
  has_many :fornece, :class_name=>'Serienum',:foreign_key => "fornecedor_id"
  
  validates :nome, :presence => true, :uniqueness => false, length: { maximum: 100 }
  validates :cnpj, :presence => true, :uniqueness => true, length: { maximum: 20 }
  validates :fantasia, length: { maximum: 60 }
  validates :ie, :presence => true, length: { maximum: 20 }
  validates :observacao, length: { maximum: 150 }
  
  validates :ender, length: { maximum: 100 }
  validates :numero, length: { maximum: 10 }
  validates :complemento, length: { maximum: 60 }
  validates :bairro, length: { maximum: 60 }
  validates :cidade, length: { maximum: 100 }
  validates :uf, length: { maximum: 2 }
  validates :cep, length: { maximum: 9 }
  validates :obs_ender, length: { maximum: 150 }

  validates :ender_cob, length: { maximum: 100 }
  validates :numero_cob, length: { maximum: 10 }
  validates :complemento_cob, length: { maximum: 60 }
  validates :bairro_cob, length: { maximum: 60 }
  validates :cidade_cob, length: { maximum: 100 }
  validates :uf_cob, length: { maximum: 2 }
  validates :cep_cob, length: { maximum: 9 }
  validates :obs_ender_cob, length: { maximum: 150 }

  validates :ender_entrega, length: { maximum: 100 }
  validates :numero_entrega, length: { maximum: 10 }
  validates :complemento_entrega, length: { maximum: 60 }
  validates :bairro_entrega, length: { maximum: 60 }
  validates :cidade_entrega, length: { maximum: 100 }
  validates :uf_entrega, length: { maximum: 2 }
  validates :cep_entrega, length: { maximum: 9 }
  validates :obs_ender_entrega, length: { maximum: 150 }

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
  
  def descr_transportadora
       if self.transportadora == 'S'
          'Sim'
       else
          'Nao'
       end
  end
  
  def descr_optante_simples
       if self.optante_simples == 'S'
          'Sim'
       else
          'Nao'
       end
  end
  
  def descr_inativo
       if self.inativo == 'S'
          'Sim'
       else
          'Nao'
       end
  end

  
  def listar(roles,options={})
        container   = options[:container] || []
        roles.each do |role|
          tag_aux = [role.nome,role.id]
          container << tag_aux
        end
        container.uniq
  end

end

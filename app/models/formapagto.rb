class Formapagto < ActiveRecord::Base
  has_one :tipo_receb_parc, :class_name => "Formarec", :foreign_key => ":receb_parc_id"
  has_one :tipo_receb_entrada, :class_name => "Formarec", :foreign_key => ":receb_entrada_id"

  validates :descr, :presence => true, :uniqueness => true,length: { maximum: 45 }
  
  def descr_pagto_nfe
       if self.pagto_nfe == 0
          'A vista'
       elsif self.pagto_nfe == 1
          'A prazo'
       else 
         'Outros'
       end
  end
  
  def descr_prorrogar_para
       if self.prorrogar_para == '2'
          'Seg'
       elsif self.prorrogar_para == '3'
          'Ter'
       elsif self.prorrogar_para == '4'
          'Qua'
       elsif self.prorrogar_para == '5'
          'Qui'
       elsif self.prorrogar_para == '6'
          'Sex'
       else 
         'Nao definido'
       end
  end
  
  def descr_dias_uteis_corridos
       if self.dias_uteis_corridos == 'U'
         'Dias Uteis'
       elsif self.dias_uteis_corridos == 'C'
         'Dias Corridos'
       else 
         'Nao definido'
       end
  end
end

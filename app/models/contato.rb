class Contato < ActiveRecord::Base
   belongs_to :participante
   belongs_to :setor
end

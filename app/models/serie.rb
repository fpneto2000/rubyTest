class Serie < ActiveRecord::Base
  belongs_to :produto
  belongs_to :participante
  belongs_to :fabricante, :class_name=>'Participante',foreign_key: 'fabricante_id'
end

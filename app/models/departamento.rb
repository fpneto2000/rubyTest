class Departamento < ActiveRecord::Base
    
    has_many :children, :class_name => "Departamento", :foreign_key => "departamento_id", dependent: :destroy
    belongs_to :departamento
    
    validates :descr,:presence => { message: " - Campo obrigatorio"}, :uniqueness => {:message => "Ja existe o departamento"}
end
class Departamento < ActiveRecord::Base
    
    has_many :children, :class_name => "Departamento", :foreign_key => "departamento_id", dependent: :destroy
    belongs_to :departamento
    
    validates :descr, :presence => true, :uniqueness => true
end

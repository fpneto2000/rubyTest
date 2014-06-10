class Departamento < ActiveRecord::Base
    
    has_many :children, :class_name => "Departamento", :foreign_key => "departamento_id", dependent: :destroy
    belongs_to :departamento
    
    validates :descr,:presence => { message: " - Campo obrigatorio"}, :uniqueness => {:message => "Ja existe o departamento"}

    def listar(roles,options={})
        container   = options[:container] || []
        roles.each do |role|
           unless role.departamento.nil?
              tag_aux = [role.departamento.descr+'/' + role.descr,role.id]
           else
              tag_aux = [role.descr,role.id]
           end 
           unless container.include? (tag_aux)
             container << tag_aux
             unless role.children.empty?
               listar(role.children,{:container=>container}) unless role.children.empty?
             end
           end
        end
        container.uniq
    end

end
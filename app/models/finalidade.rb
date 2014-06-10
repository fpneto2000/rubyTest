class Finalidade < ActiveRecord::Base
    validates :descr, :presence => true, :uniqueness => true

    def listar(roles,options={})
        container   = options[:container] || []
        roles.each do |role|
          tag_aux = [role.descr,role.id]
          container << tag_aux
        end
        container.uniq
    end
    
end


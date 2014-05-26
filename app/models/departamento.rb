class Departamento < ActiveRecord::Base
    validates :descr, :presence => true, :uniqueness => true
end

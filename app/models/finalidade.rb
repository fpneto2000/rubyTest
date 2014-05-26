class Finalidade < ActiveRecord::Base
    validates :descr, :presence => true, :uniqueness => true
end

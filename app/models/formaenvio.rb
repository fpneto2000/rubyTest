class Formaenvio < ActiveRecord::Base
  validates :descr, :presence => true, :uniqueness => true, length: { maximum: 45 }
end

require 'digest/sha2'

class Usuario < ActiveRecord::Base
  validates :nome, :presence => true, :uniqueness => true
  validates :login, :presence =>true, :uniqueness => true
  
  validates :senha, :confirmation => true
  attr_accessor :senha_confirmation
  attr_reader :senha
  
  validate :password_must_be_present
  
     def Usuario.authenticate(login, password)
        if usuario = find_by_login(login)
          if usuario.hashed_password == encrypt_password(password, usuario.salt)
             usuario
          end
        end 
     end
     
     def Usuario.encrypt_password(password, salt)
       digest::SHA2.hexdigest(password + "wibble" + salt)
     end
     
     def password=(password)
       @password = password
       
       if password.present?
         generate_salt
         self.hashed_password = self.class.encrypt_password(password, salt)
       end
       
     end

  private  
     def password_must_be_present
       errors.add(:senha, "Senha obrigatoria") unless hashed_password.present?
     end
     
     def generate_salt
       self.salt = self.object_id.to_s + rand.to_s
     end
     
end

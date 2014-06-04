require 'digest/sha2'

class Usuario < ActiveRecord::Base
  validates :nome, :presence => true, :uniqueness => true
  validates :login, :presence =>true, :uniqueness => true
  
  validates :password, :confirmation => true
  attr_accessor :password_confirmation
  attr_reader :password
  
  validate :password_must_be_present
  
     def Usuario.authenticate(login, password)
        if usuario = find_by_login(login)
          if usuario.senha == encrypt_password(password, usuario.salt)
             usuario
          end
        end 
     end
     
     def Usuario.encrypt_password(password, salt)
       Digest::SHA2.hexdigest(password + "wibble" + salt)
     end
     
     def password=(password)
       @password = password
       
       if password.present?
         generate_salt
         self.senha = self.class.encrypt_password(password, salt)
       end
     end
     

  private  
     def password_must_be_present
       errors.add(:password, "Senha obrigatoria") unless senha.present?
     end
     
     def generate_salt
       self.salt = self.object_id.to_s + rand.to_s
     end
     
end

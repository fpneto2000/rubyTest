class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  before_filter :authorize
  
  protect_from_forgery with: :exception
  
  protected
    def authorize
      unless Usuario.find_by_id(session[:usuario_id])
        redirect_to login_url, :notice => "Por favor faca o Login!"
      end
    end
    
      
end


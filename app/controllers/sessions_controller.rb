class SessionsController < ApplicationController
  def new
  end

  def create
    if usuario = Usuario.authenticate(params[:login], params[:password])
      session[:usuario_id] = usuario.id
      redirect_to admin_url
    else
      redirect_to login_url, :alert => "Usuario e/ou Senha invalidos"
    end  
  end

  def destroy
    session[:usuario_id] = nil
    redirect_to login_url, :notice => "Logged out"
  end
end

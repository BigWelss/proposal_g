class SessionsController < ApplicationController
  def new
  end

  def create
    usuario = Usuario.find_by_login(params[:session][:login])
    if usuario && usuario.authenticate(params[:session][:password])
      flash[:success] = "Bem-vindo ao Pricing"
    	log_in usuario
      redirect_to '/'
    else
      flash[:danger] = 'Login ou password inválidos'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end

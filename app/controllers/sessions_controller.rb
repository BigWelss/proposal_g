class SessionsController < ApplicationController
  def new
  end

  def create
    usuario = Usuario.find_by_login(params[:session][:login])
    if usuario && usuario.authenticate(params[:session][:password])
      flash[:success] = "Welcome to Pricing"
    	log_in usuario
      redirect_to usuario
    else
      flash[:danger] = 'Invalid login/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end

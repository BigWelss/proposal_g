class UsuariosController < ApplicationController
  def show
  	@usuario = Usuario.find(1)
  end
end

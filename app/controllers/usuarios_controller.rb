class UsuariosController < ApplicationController
	before_action :authorize
  def show
  	@usuario = Usuario.find(1)
  end
end

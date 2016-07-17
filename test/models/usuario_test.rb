require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
	def setup
    	@Usuario = Usuario.new(login: "Example Usuario",
                     password: "foobar", 
                     password_confirmation: "foobar")
  	end

  	test "login should be present" do
    	@Usuario.login = "     "
    	assert_not @Usuario.valid?
  	end

  	test "password should be present (nonblank)" do
	    @Usuario.password = @Usuario.password_confirmation = " " * 6
	    assert_not @Usuario.valid?
	  end

	test "password should have a minimum length" do
	    @Usuario.password = @Usuario.password_confirmation = "a" * 5
	    assert_not @Usuario.valid?
	end
end

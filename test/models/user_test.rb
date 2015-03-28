require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
  	@user = User.new(username: "Lara", password: "password123", email: "lcfinnegan@gmail.com")
  end

  	test "username should not be blank" do 
  		@user.username = "     "
  		assert_not @user.valid?
  	end

  	test "email should not be blank" do 
  		@user.email = "   "
  		assert_not @user.valid?
  	end

  	test "password should not be blank" do 
  		@user.password = "   "
  		assert_not @user.valid?
  	end
end

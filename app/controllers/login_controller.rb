class LoginController < ApplicationController
  def login
  end
  def loginpost(email, password)
  	user = User.find_by_email(email)	
  	if(user == nil)
  		@message = "Email Not Found"
  		return
  	end
  	if(user.password != password)
  		@message = "Wrong password"
  		return
  	end
  	session[:user] = user
  	
  end
end

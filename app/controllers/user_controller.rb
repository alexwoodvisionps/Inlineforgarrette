class UserController < ApplicationController
    def signup
    end
    def edit(id)
    	
    	@user = User.find_by_id(id)
    end
    def delete(id)
    	@user = User.find_by_id(id)
    end
    def list
    	@users = User.all
    end
    def validateAdmin
    	if(session[:admin] == nil)
		  @authmessage = "You do not have permission to view this page"
		  return false
  	end
  	return true
    end
    def validateUser()
    	if(session[:user] == nil)
	  	@authmessage = "You do not have permission to view this page"
	  	return false
  	end    
  	return true
    end
    def signuppost(email,password)
    	usertmp = User.find_by_email(email)
    	if(usertmp != nil)
    		@message = "Email already exists!"
    		return
    	end
    	user = User.new()
    	user.email = email
    	user.password = password
    	User.add(user)
    	session[:user] = User.find_by_email(email)		
    end
    def editpost(user)
    	User.update(user)
    end
    def deletepost(user)
    	User.delete(user.id)
  end
end

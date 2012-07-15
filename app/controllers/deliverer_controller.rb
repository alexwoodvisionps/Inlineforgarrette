class DelivererController < ApplicationController
  def new
  	if(session[:admin] == nil)
	  	@authmessage = "You do not have permission to create a deliverer"
	  	return
  	end
  end
  def edit(id)
  	if(session[:admin] == nil)
	  	@authmessage = "You do not have permission to edit a deliverer"
	  	return
  	end
  	@user = Deliverer.find_by_id(id)
  end
  def delete(id)
  	if(session[:admin] == nil)
	  	@authmessage = "You do not have permission to delete a deliverer"
	  	return
  	end
  	@user = Deliverer.find_by_id(id)
  end
  def list
  	if(session[:admin] == nil)
	  	@authmessage = "You do not have permission to see deliverers"
	  	return
  	end
  	@users = Deliverer.all
  end
  def newpost(phone,password,firstname, lastname, nickname)
  	if(session[:admin] == nil)
  		@authmessage = "You do not have permission to create a deliverer"
  		return
  	end
  	usertmp = User.find_by_phone(phone)
  	if(usertmp != nil)
  		@message = "Phone already exists!"
  		return
  	end
  	if(phone == "" || phone == nil)
  		@message = "Phone is empty"
  		return
  	end
  	user = Deliverer.new()
  	user.phone = phone
  	user.password = password
  	user.firstname = firstname
  	user.lastname = lastname
  	user.nickname = nickname
  	User.add(user)
  	
  end
  def editpost(user)
  	if(session[:admin] == nil)
	  	@authmessage = "You do not have permission to edit a deliverer"
	  	return
  	end
  	User.update(user)
  end
  def deletepost(user)
  	if(session[:admin] == nil)
  	  	@authmessage = "You do not have permission to delete a deliverer"
  	  	return
  	end
  	User.delete(user.id)
  end
end

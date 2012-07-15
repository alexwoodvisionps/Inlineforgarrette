class OrderController < ApplicationController
  def new
  	@user = session[:user]
  end
  def edit(id)
  	@user = session[:user]
  	@order = Order.find_by_id(id)
  	if(@user == nil || !validateUser(@user.id) && !validateAdmin())
	  		@authmessage = "Order Restricted!"
	  		redirect_to controller => "order", action => "list"
  	end
  end
  def cancel(id)
  	@user = session[:user]
  	@order = Order.find_by_id(id)
  	if(@user == nill || !validateUser(@user.id) && !validateAdmin())
  		@authmessage = "Order Restricted!"
  		redirect_to controller => "order", action => "list"
  	end
  end
  def validateAdmin
      	if(session[:admin] == nil)
  		  @authmessage = "You do not have permission to view this page"
  		  return false
    	end
    	return true
  end
  def validateUser(id)
  	if(session[:user] == nil || session[:user].id != id)
  	  	@authmessage = "You do not have permission to view this page"
  	  	return false
    	end    
    	return true
  end
  def list
  	@user = session[:user]
  	if(user != nil) 
 		@orders = Order.find_all{|u| u.user_id == @user_id}
 		
 	else
 		redirect_to controller => "login", action=> "login"
 		
 	end
  end
  def newpost(order)
    	if((session[:user] != null && validateUser(session[:user].id)) || validateAdmin())
    		Order.add(order)
    		redirect_to controller => "orders", action => "list"
    		return
    	end
    	redirect_to controller => "login", action => "login"
    	
  end
  def editpost(order)
  	if((session[:user] != null && validateUser(session[:user].id)) || validateAdmin())
    		Order.update(order)
    		redirect_to controller => "orders", action => "list"
    		return
    	end
    	redirect_to controller => "login", action => "login"
  end
  def cancelpost(order)
  	if((session[:user] != null && validateUser(session[:user].id)) || validateAdmin())
    		Order.delete(order)
    		redirect_to controller => "orders", action => "list"
    		return
    	end
   	redirect_to controller => "login", action => "login"
  end
  
end

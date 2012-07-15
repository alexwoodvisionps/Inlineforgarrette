class SiteadminpanelController < ApplicationController
  def adminpanel
  	if(!validate())
  		return
  end
  def validate
  	if(session[:admin] == nil)
  		@message = "You do not have permission to view this page"
  		return false
  	end
  	return true
  end 
  def login
  	
  end
  def loginpost(username, password)
  	settings = AdminSettings.All
  	if(settings[0].username == username && settings[0].password == password)
  	{
  		session[:admin] = settings[0]
  		redirect_to :controller=>'orders', :action => 'list'
  	}
  	else
  		@authmessage = "Admin Credentials Are Wrong!"
  	end
  end
end

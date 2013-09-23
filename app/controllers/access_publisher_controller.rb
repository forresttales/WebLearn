class AccessPublisherController < ApplicationController
  
  layout 'access_publisher'
  
  #before_filter :confirm_logged_in, :except => [:login, :attempt_login, :logout]
  
  def index    
  end
  
  def menu
  end

  def login
  end
  
  def show
     
  end

  def confirm_logged_in
    # unless session[:user_id]
      # flash[:notice] = "Please log in."
      # render('show')
      # return false # halts the before_filter
    # else
      # redirect_to(:controller => 'admin_users')
      # return true
    # end
  end
  
  def attempt_login_publisher
    
    # render text: "in attempt login"
    
    # authorized_user = AdminUser.authenticate(params[:username], params[:password])
    # if authorized_user
      # session[:user_id] = authorized_user.id
      # session[:username] = authorized_user.username
      # flash[:notice] = "You are now logged in."
      # redirect_to(:action => 'index')
    # else
      # flash[:notice] = "Invalid username/password combination."
      # redirect_to(:action => 'login')
    # end
    
  end
  
  def logout
    # session[:user_id] = nil
    # session[:username] = nil
    # flash[:notice] = "You have been logged out."
    # redirect_to(:action => "login")
  end
  
end

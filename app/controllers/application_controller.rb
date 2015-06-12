class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def set_confirmation(email)
    cookies.encrypted[:commun_reg_email] = email
    # cookies.encrypted[:commun_reg_email] = { value: email, expires: Time.now + 3600}
    # cookies.encrypted[:expiration_date] = Date.tomorrow # => Thu, 20 Mar 2014
  end
 
  def read_confirmation
    cookies.encrypted[:commun_reg_email]
  end
    
  # def set_sessions
    # session[:commun_registered] = false
    # session[:commun_registered_email] = ""  
  # end
  
  
  # after_filter :set_access_control_headers
  # def set_access_control_headers
    # headers['Access-Control-Allow-Origin'] = '*'
    # headers['Access-Control-Request-Method'] = '*'
  # end
    
  # include SessionsHelper  
  
  # protected
#   
  # def confirm_logged_in
    # unless session[:user_id]
      # flash[:notice] = "Please log in."
#       
      # redirect_to(:controller => 'access', :action => 'show')
      # #redirect_to(:controller => 'contacts', :action => 'list')
#       
#       
      # return false # halts the before_filter
    # else
      # return true
    # end
  # end
  
end


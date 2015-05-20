class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def set_sessions
    session[:commun_registered] = false  
  end
  
  
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


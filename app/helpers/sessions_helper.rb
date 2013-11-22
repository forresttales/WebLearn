module SessionsHelper
    
  def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.encrypt(remember_token))
    self.current_user = user
    
    
    session[:username] = user.username
    session[:user_id] = user.id
    session[:has_account] = user.has_account
    session[:signed_in] = true
    
    
    # if user.admin
      # session[:admin] = true
    # else
      # session[:admin] = nil            
    # end
#       
    # flash[:login] = 'Logged In'

    # respond_to do |format|
      # format.html
      # format.js      
    # end
    
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    remember_token = User.encrypt(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end

  def current_user?(user)
    user == current_user
  end

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in"
    end
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
    
    
    session[:username] = nil
    #session[:admin] = nil
    session[:has_account] = nil
    session[:user_id] = nil
    session[:signed_in] = nil
    
    # if user.admin
      # session[:admin] = true
    
    #flash[:logout] = "Logged out"
    
    #redirect_to("login_path")
    # redirect_to(:controller => 'users', :action => 'home')
    
    
  end

  def redirect_back_or(default)
    # redirect_to(session[:return_to] || default)
    # session.delete(:return_to)
    
    if session[:has_account]
      redirect_to(:controller => 'students')
    else
      redirect_to(:controller => 'users', :action => 'show')      
    end
    
    
    
  end

  def store_location
    session[:return_to] = request.url
  end  
end

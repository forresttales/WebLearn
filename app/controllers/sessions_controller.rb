class SessionsController < ApplicationController

  layout 'session'

  def new
  end

  def create
    #user = User.find_by(email: params[:session][:email].downcase)
    user = User.find_by(username: params[:session][:username])
    
    # user.nil?
    
    if user && user.authenticate(params[:session][:password])
      sign_in user

      #session[:username] = user.username
      
      #flash[:success] = 'Logged In'
      
      redirect_back_or user
       
      
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
    
  end

  def destroy
    sign_out
    #redirect_to root_url
    redirect_to index_path    
  end
  
  
end
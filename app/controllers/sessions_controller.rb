class SessionsController < ApplicationController

  layout 'session'

  def new
  end

  def create
    #user = User.find_by(email: params[:session][:email].downcase)
    user = User.find_by(username: params[:session][:username])    
    if user && user.authenticate(params[:session][:password])
      sign_in user
      #redirect_back_or user
      
    redirect_to home_path    
      
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    #redirect_to root_url
    redirect_to home_path    
  end
end

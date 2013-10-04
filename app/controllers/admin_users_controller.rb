class AdminUsersController < ApplicationController
  # weblearn
  
  layout 'admin'
  
  before_filter :confirm_logged_in  
  
  def list

    @admin_users = User.paginate(page: params[:page]).per_page(5)
    
  end
  
  def new
  end
  
  def view
    @user = User.find(params[:id])
        
    # respond_to do |format|
      # format.html
      # format.js      
    # end
    
  end
    
  def show
  end
  
  def create
  end
  
  def edit
    render text: "in edit"
  end
  
  def update
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id])
    user.delete
    flash[:notice] = "User destroyed."
  end
  
  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to(login_path)
      return false # halts the before_filter
    else
      #redirect_to(:controller => 'admin_users', :action => 'list')
      return true
    end
  end

  def logout
    session[:user_id] = nil
    session[:username] = nil
    flash[:notice] = "You have been logged out."
    #redirect_to("login_path")
    redirect_to(:controller => 'users', :action => 'home')
    
    
    #render text: "in logout"
  end
  
  # def get_message
#     
    # respond_to do |format|
      # format.html
      # format.js      
    # end    
  # end
  
end

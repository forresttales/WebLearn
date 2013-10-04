class RegistersController < ApplicationController
  
  layout 'register'
  
  before_filter :confirm_logged_in
  
  def index
    #list
    #render('list')
  end
  
  def list
    # @admin_users = AdminUser.sorted
  end

  def new
    @register = Register.new
  end
  
  def show
    
  end
  
  def create
    
    @register = Register.new(register_params)
    if @register.save
      #sign_in @register
      flash[:notice] = "Password Created"
      #redirect_to @register
      redirect_to(:action => 'show')
      
    else
      flash[:notice] = "Password Creation Failed"

      redirect_to(:action => 'show')
      
      #render 'new'
    end
    
    # register = Register.new(params[:register])
#     
    # # render text: register.account_type
# 
    # #render text: register.account_type
#     
    # if register.save
      # flash[:notice] = 'Password Created.'
      # #redirect_to(:action => 'index')
    # else
      # flash[:notice] = 'Password Not Created.'
#       
      # #render("new")
    # end
  end
  
  def edit
    # @admin_user = AdminUser.find(params[:id])
  end
  
  def update
    # @admin_user = AdminUser.find(params[:id])
    # if @admin_user.update_attributes(params[:admin_user])
      # flash[:notice] = 'Admin user updated.'
      # redirect_to(:action => 'list')
    # else
      # render("edit")
    # end
  end

  def delete
    # @admin_user = AdminUser.find(params[:id])
  end

  def destroy
    # AdminUser.find(params[:id]).destroy
    # flash[:notice] = "Admin user destroyed."
    # redirect_to(:action => 'list')
  end
  
  def confirm_logged_in
    # unless session[:user_id]
      # flash[:notice] = "Please log in."
      # #redirect_to(:action => 'login')
#       
      # #redirect_to(:action => 'login')
      # #redirect_to(:controller => 'controller', :action => 'show')
#       
#       
      # return false # halts the before_filter
    # else
      # #redirect_to(:controller => 'admin_users', :action => 'list')
      # return true
    # end
  end
  
  def logout
    # session[:user_id] = nil
    # session[:username] = nil
    # flash[:notice] = "You have been logged out."
    # #redirect_to("login_path")
    # redirect_to(:controller => 'users', :action => 'home')
#     
#     
    # #render text: "in logout"
  end
  
  private

    def register_params
      params.require(:register).permit(:username, :account_type, :password, :password_confirmation)
    end

    # Before filters

    # def correct_user
      # @user = User.find(params[:id])
      # redirect_to(root_url) unless current_user?(@user)
    # end
# 
    # def admin_user
      # redirect_to(root_url) unless current_user.admin?
    # end
  
end


  # def update
    # if @user.update_attributes(user_params)
      # flash[:success] = "Profile updated"
      # sign_in @user
      # redirect_to @user
    # else
      # render 'edit'
    # end
  # end
# 
  # def destroy
    # User.find(params[:id]).destroy
    # flash[:success] = "User destroyed."
    # redirect_to users_url
  # end
# 
  # def following
    # @title = "Following"
    # @user = User.find(params[:id])
    # @users = @user.followed_users.paginate(page: params[:page])
    # render 'show_follow'
  # end
# 
  # def followers
    # @title = "Followers"
    # @user = User.find(params[:id])
    # @users = @user.followers.paginate(page: params[:page])
    # render 'show_follow'
  # end
# 
  # private
# 
    # def user_params
      # params.require(:user).permit(:name, :email, :password,
                                   # :password_confirmation)
    # end
# 
    # # Before filters
# 
    # def correct_user
      # @user = User.find(params[:id])
      # redirect_to(root_url) unless current_user?(@user)
    # end
# 
    # def admin_user
      # redirect_to(root_url) unless current_user.admin?
    # end

class PublishersController < ApplicationController
  
  layout 'publisher'
  
  #before_filter :confirm_logged_in
  
  def index
    #list
    #render('list')
  end
  
  def home
    
  end
  
  def list
    # @admin_users = AdminUser.sorted
  end

  def show
    @info = Publisher.where(["user_id = ?", session[:user_id]]).first       
  end
  
  def new
    @publisher = Publisher.new
  end
  
  def create
    @publisher = Publisher.new(publisher_params)
    @publisher.user_id = session[:user_id]
    @user = User.find(session[:user_id])
    
    if @user.update_attribute(:has_account, TRUE)
      if @user.update_attribute(:account_type, "publisher")
        if @publisher.save
          flash[:notice] = 'Publisher account created'
          #redirect_to(:action => 'list')
        else
          flash.now[:notice] = "Account create failed"
          
          render("new")
        end
      else
        flash[:notice] = 'User update failed'      
      end
    else
      flash[:notice] = 'User update failed'      
    end
    
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
    
  private

    def publisher_params
      params.require(:publisher).permit(:name)
    end
  
end

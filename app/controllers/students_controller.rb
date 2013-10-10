class StudentsController < ApplicationController

  layout 'student'
  
  #before_filter :confirm_logged_in
  
  def index
    @info = Student.where(["user_id = ?", session[:user_id]]).first       
    #list
    #render('list')
  end
  
  def home
    
  end
  
  def list
    # @admin_users = AdminUser.sorted
  end

  def show
    @info = Student.where(["user_id = ?", session[:user_id]]).first   
  end
  
  def new
    @student = Student.new
  end
  
  def create
    @student = Student.new(student_params)
    @student.user_id = session[:user_id]
    @user = User.find(session[:user_id])
    
    if @user.update_attribute(:has_account, TRUE)
      if @user.update_attribute(:account_type, "student")
        if @student.save
          flash[:notice] = 'Student account created'
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

    def student_params
      params.require(:student).permit(:name_first, :name_last, :phone)
    end
  
  
end

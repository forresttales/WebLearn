class StudentsController < ApplicationController

  layout 'student'
  
  #before_filter :confirm_logged_in
  
  def index
    @student = Student.where(["user_id = ?", session[:user_id]]).first       
    @username = session[:username]
  end
  
  
  def list
    # @admin_users = AdminUser.sorted
  end


  def show
    @info = Student.where(["user_id = ?", session[:user_id]]).first   
  end

  
  def new
    
    if !(session[:username].nil? or session[:user_id].nil?)
      @username = session[:username]
      @student = Student.new
    else
      render text: 'failed sessions'
    end
    
  end

  
  def create
    @student = Student.new(student_params)
    @student.user_id = session[:user_id]
    user = User.find(session[:user_id])

    if user.update_attributes(:has_account => true, :account_type => 'student')
      if @student.save
        
        session[:has_account] = true
        session[:account_type] = "student"    
        session[:profile] = "students/home"
        
        redirect_to(:action => 'index')
      else
        render text: 'save student failed'
        #render("new")
      end
    else
      render text: 'update user_id failed'
    end
    
    # if @user.update_attribute(:has_account, TRUE)
      # if @user.update_attribute(:account_type, "student")
        # if @student.save
          # flash[:notice] = 'Student account created'
          # #redirect_to(:action => 'list')
        # else
          # flash.now[:notice] = "Account create failed"
#           
          # render("new")
        # end
      # else
        # flash[:notice] = 'User update failed'      
      # end
    # else
      # flash[:notice] = 'User update failed'      
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
  
  
  private

    def student_params
      params.require(:student).permit(
                                      :phone
                                     )
    end
  
  
end

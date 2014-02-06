class TeachersController < ApplicationController
  
  layout 'teacher'
  
  #before_filter :confirm_logged_in
  
  def index
    @teacher = Teacher.where(["user_id = ?", session[:user_id]]).first       
    @username = session[:username]
  end
  
  
  def list
    # @admin_users = AdminUser.sorted
  end


  def show
    @info = Teacher.where(["user_id = ?", session[:user_id]]).first   
  end

  
  def new
    
    if !(session[:username].nil? or session[:user_id].nil?)
      @username = session[:username]
      @teacher = Teacher.new
    else
      render text: 'failed sessions'
    end
    
  end

  
  def create

    @teacher = Teacher.new(teacher_params)
    @teacher.user_id = session[:user_id]            
    user = User.find_by_id(session[:user_id])

    if user.update_columns( :has_account => true, :account_type => "teacher")
      if @teacher.save         
        session[:has_account] = true
        session[:account_type] = "teacher"    
        session[:profile] = "teachers/home"
         
        redirect_to(:action => 'index')
      else
        render text: 'save teacher failed'
      end
    else
      render text: 'column update user_id failed'
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

    def teacher_params
      params.require(:teacher).permit(
                                      :name_first, 
                                      :name_last, 
                                      :phone,
                                      :created_at,
                                      :updated_at
                                     )
      
    end
  
  
  
end

class AdminStudentsController < ApplicationController
  
  layout 'admin'
  
  def list
    @admin_students = Student.paginate(page: params[:page]).per_page(5)
  end
  
  def new
  end
  
  def view
    @student = Student.find(params[:id])        
  end
    
  def show
  end
  
  def create
  end
  
  def edit
    #render text: "in edit"
  end
  
  def update
  end

  def delete
    #@user = User.find(params[:id])
  end

  def destroy
    # user = User.find(params[:id])
    # user.delete
    # flash[:notice] = "User destroyed."
  end
  
  
end

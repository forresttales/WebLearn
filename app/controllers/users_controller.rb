class UsersController < ApplicationController

  #layout 'user'
  
  before_action :signed_in_user,
                only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy
  
  skip_before_filter :verify_authenticity_token
  
  def index
  end
  
  def home

    user = User.find_by_id(session[:user_id])
    
    case account_type = user.account_type
    when "institute"
      redirect_to(:controller => 'institutes', :action => 'home')
    when "teacher"
      redirect_to(:controller => 'teachers', :action => 'home')
    when "student"
      redirect_to(:controller => 'students', :action => 'home')
    when "publisher"
      redirect_to(:controller => 'publishers', :action => 'home')
    else
      # alert error redirect
    end
    
  end
  
  def list
  end

  def new
    @account_type = params[:id]
    @user = User.new
  end
  
  def show
    #@user = User.find(params[:id])
    @user = User.find(session[:user_id])    
  end
  
  def create

    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to The Learning Counsel!"
      
        # case account_type= params[:account_type]
        # when "School"
          # redirect_to(:controller => 'institutes', :action => 'new')
        # when "Teacher"
          # redirect_to(:controller => 'teachers', :action => 'new')
        # when "Student"
          # redirect_to(:controller => 'students', :action => 'new')
        # when "Publisher"
          # redirect_to(:controller => 'publishers', :action => 'new')
        # else
          # # alert error redirect
        # end
      
    else
      flash.now[:notice] = "Password Creation Failed"

      render 'new'
    end

  end
    
  def edit
  end
  
  def update
  end

  def delete
  end

  def destroy
  end
    
  private

    def user_params
      params.require(:user).permit(:name_first, :name_last, :email, :username, :account_type, :password, :password_confirmation)
    end
    
  end
class RegCommunsController < ApplicationController
  
  layout 'reg_commun'
  
  def index
      redirect_to '/index'            
  end

  def new
    @reg_commun = RegCommun.new    
  end

  def create
    
    @reg_commun = RegCommun.new(reg_commun_params)
    
    if @reg_commun.save
      
      session[:reg_commun_saved] = true
      
      # mail = RegCommunMailer.welcome_email(@reg_commun)
      # mail.deliver
 
        # format.html { redirect_to(@user, notice: 'User was successfully created.') }
        # format.json { render json: @user, status: :created, location: @user }
      # else
        # format.html { render action: 'new' }
        # format.json { render json: @user.errors, status: :unprocessable_entity }
              
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

      session[:reg_commun_saved] = nil

    end
    
  end

  def show
  end
  
  private

    def reg_commun_params
      params.require(:reg_commun).permit(:name_first, :name_last, :name_title, :name_affiliation, :public_private, 
                  :address, :city, :state, :zip, :phone, :email, :level, :institution_size,
                  :characterize_decision, :characterize_area, :survey_preferences, :city_workshop, :created_at, :updated_at)
    end
  
end

#  id                    :integer          not null, primary key
#  name_first            :string(50)
#  name_last             :string(50)
#  name_title            :string(50)
#  name_affiliation      :string(100)
#  public_private        :string(10)
#  address               :string(100)
#  city                  :string(50)
#  state                 :string(50)
#  zip                   :string(10)
#  phone                 :string(50)
#  email                 :string(255)      default(""), not null
#  level                 :string(50)
#  institution_size      :string(50)
#  characterize_decision :string(50)
#  characterize_area     :text
#  survey_preferences    :text
#  created_at            :datetime
#  updated_at            :datetime

class RegEventsController < ApplicationController
  
  layout 'reg_event'
  
  def index
      redirect_to '/index'        
  end

  def new
    @reg_event = RegEvent.new    
  end

  def create

    @reg_event = RegEvent.new(reg_event_params)
    
    if @reg_event.save
      
      session[:reg_event_saved] = true
      
      # mail = RegEventMailer.welcome_email(@reg_event)
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

      session[:reg_event_saved] = nil

    end
    
  end

  def show
  end
  
  private

    def reg_event_params
      params.require(:reg_event).permit(:name_first, :name_last, :name_title, :type_affiliation, :name_affiliation, 
                  :address, :city, :state, :zip, :phone, :email, :city_workshop, :created_at, :updated_at)
    end
  
end

#  id               :integer          not null, primary key
#  name_first       :string(50)
#  name_last        :string(50)
#  name_title       :string(50)
#  type_affiliation :string(50)
#  name_affiliation :string(100)
#  address          :string(100)
#  city             :string(50)
#  state            :string(50)
#  zip              :string(10)
#  phone            :string(50)
#  email            :string(255)      default(""), not null
#  city_workshop    :string(50)
#  created_at       :datetime
#  updated_at       :datetime

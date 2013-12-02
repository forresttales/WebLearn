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
    
    reg_event = @reg_event

    type_affiliation = reg_event.type_affiliation

    case type_affiliation  
      when "1"
        reg_event.type_affiliation = "Institute"
      when "2"
        reg_event.type_affiliation = "Company"
      when "3"
        reg_event.type_affiliation = "OTHER"
      else
        
    end
    
    city_workshop = reg_event.city_workshop
    
    case city_workshop
      when "1"
        reg_event.city_workshop = "Charleston/Columbia, SC"
      when "2"
        reg_event.city_workshop = "Houston, TX"
      when "3"
        reg_event.city_workshop = "Albuquerque, NM"
      when "4"
        reg_event.city_workshop = "Chicago, IL"
      when "5"
        reg_event.city_workshop = "Fresno, CA (Central)"
      when "6"
        reg_event.city_workshop = "Columbus, OH"
      when "7"
        reg_event.city_workshop = "San Bernadino, CA"
      when "8"
        reg_event.city_workshop = "Richmond, VA"
      when "9"
        reg_event.city_workshop = "Milwaukee, MI"
      when "10"
        reg_event.city_workshop = "Las Vegas"
      when "11"
        reg_event.city_workshop = "Newark, NJ"
      when "12"
        reg_event.city_workshop = "Tucson/Santa Fe, AZ"
      when "13"
        reg_event.city_workshop = "Tampa, FL"
      when "14"
        reg_event.city_workshop = "OTHER"
        
      else
      
    end    
    
    # value="1">Charleston/Columbia, SC
    # value="2">Houston, TX
    # value="3">Albuquerque, NM
    # value="4">Chicago, IL
    # value="5">Fresno, CA (Central)
    # value="6">Columbus, OH
    # value="7">San Bernadino, CA
    # value="8">Richmond, VA
    # value="9">Milwaukee, MI
    # value="10">Las Vegas
    # value="11">Newark, NJ
    # value="12">Tucson/Santa Fe, AZ
    # value="13">Tampa, FL
    # value="14">OTHER
    
    @reg_event = reg_event
    
    if @reg_event.save
      
      session[:reg_event_saved] = true
      
      mail = RegEventMailer.welcome_email(@reg_event)
      mail.deliver
 
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

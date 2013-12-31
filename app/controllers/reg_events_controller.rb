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
    

        # <option value="1">Columbia, SC</option>
        # <option value="2">Houston, TX</option>
        # <option value="3">Albuquerque, NM</option>
        # <option value="4">Fresno, CA (Central)</option>               
        # <option value="5">Chicago, IL</option>
        # <option value="6">San Bernadino, CA</option>                
        # <option value="7">Richmond, VA</option>
        # <option value="8">Minneapolis, MN</option> 
        # <option value="9">Detroit, MI</option>
        # <option value="10">Las Vegas, NV</option>
        # <option value="11">San Jose, CA</option>                
        # <option value="12">Newark, NJ</option>
        # <option value="13">Tucson/Santa Fe, AZ</option>
        # <option value="14">Tampa, FL</option>
    
    
    if reg_event.city_workshop_1
      reg_event.city_workshop_1_text = 'Columbia, SC'
    else
      reg_event.city_workshop_1_text = ''
    end 

    if reg_event.city_workshop_2
      reg_event.city_workshop_2_text = 'Houston, TX'
    else
      reg_event.city_workshop_2_text = ''
    end 
    
    if reg_event.city_workshop_3
      reg_event.city_workshop_3_text = 'Albuquerque, NM'
    else
      reg_event.city_workshop_3_text = ''
    end 

    if reg_event.city_workshop_4
      reg_event.city_workshop_4_text = 'Fresno, CA (Central)'
    else
      reg_event.city_workshop_4_text = ''
    end 

    if reg_event.city_workshop_5
      reg_event.city_workshop_5_text = 'Chicago, IL'
    else
      reg_event.city_workshop_5_text = ''
    end 

    if reg_event.city_workshop_6
      reg_event.city_workshop_6_text = 'San Bernadino, CA'
    else
      reg_event.city_workshop_6_text = ''
    end 

    if reg_event.city_workshop_7
      reg_event.city_workshop_7_text = 'Richmond, VA'
    else
      reg_event.city_workshop_7_text = ''
    end 

    if reg_event.city_workshop_8
      reg_event.city_workshop_8_text = 'Minneapolis, MN'
    else
      reg_event.city_workshop_8_text = ''
    end 

    if reg_event.city_workshop_9
      reg_event.city_workshop_9_text = 'Detroit, MI'
    else
      reg_event.city_workshop_9_text = ''
    end 

    if reg_event.city_workshop_10
      reg_event.city_workshop_10_text = 'Las Vegas, NV'
    else
      reg_event.city_workshop_10_text = ''
    end 

    if reg_event.city_workshop_11
      reg_event.city_workshop_11_text = 'San Jose, CA'
    else
      reg_event.city_workshop_11_text = ''
    end 

    if reg_event.city_workshop_12
      reg_event.city_workshop_12_text = 'Newark, NJ'
    else
      reg_event.city_workshop_12_text = ''
    end 

    if reg_event.city_workshop_13
      reg_event.city_workshop_13_text = 'Tucson/Santa Fe, AZ'
    else
      reg_event.city_workshop_13_text = ''
    end 

    if reg_event.city_workshop_14
      reg_event.city_workshop_14_text = 'Tampa, FL'
    else
      reg_event.city_workshop_14_text = ''
    end 
    
    
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
      params.require(:reg_event).permit(
          :name_first, 
          :name_last, 
          :name_title, 
          :type_affiliation, 
          :name_affiliation, 
          :address, 
          :city, 
          :state, 
          :zip, 
          :phone, 
          :email, 
          :email_cc_1, 
          :email_cc_2, 
          :city_workshop,
          :city_workshop_1,
          :city_workshop_2,
          :city_workshop_3,
          :city_workshop_4,
          :city_workshop_5,
          :city_workshop_6,
          :city_workshop_7,
          :city_workshop_8,
          :city_workshop_9,
          :city_workshop_10,
          :city_workshop_11,
          :city_workshop_12,
          :city_workshop_13,
          :city_workshop_14,          
          :city_workshop_1_text,
          :city_workshop_2_text,
          :city_workshop_3_text,
          :city_workshop_4_text,
          :city_workshop_5_text,
          :city_workshop_6_text,
          :city_workshop_7_text,
          :city_workshop_8_text,
          :city_workshop_9_text,
          :city_workshop_10_text,
          :city_workshop_11_text,
          :city_workshop_12_text,
          :city_workshop_13_text,
          :city_workshop_14_text,          
          :created_at, 
          :updated_at
          )
    end
  
end


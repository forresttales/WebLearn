class RegEventsController < ApplicationController
  
  layout 'reg_event'

  respond_to :html, :js  


  def index

    # redirect_to '/new'
    
    # respond_to do |format|
      # format.html
      # format.js
    # end

  end


  def new
    @reg_event = RegEvent.new
    
    respond_to do |format|
      format.html
      format.js
    end

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
        #        
    end
    
    
    if reg_event.city_workshop_1
      reg_event.city_workshop_1_text = 'Columbia, SC'
      
          case reg_event.city_workshop_1_session
            when 1
               reg_event.city_workshop_1_session_text = "8:30am-3:30pm"
            when 2
               reg_event.city_workshop_1_session_text = "4-6:30pm"
            when 3
               reg_event.city_workshop_1_session_text = "Full Day"
            else
             # 
          end
      
    else
      reg_event.city_workshop_1_text = ''
      reg_event.city_workshop_1_session_text = ''      
    end 


    if reg_event.city_workshop_2
      reg_event.city_workshop_2_text = 'Fresno, CA (Central)'
      
          case reg_event.city_workshop_2_session
            when 1
               reg_event.city_workshop_2_session_text = "8:30am-3:30pm"
            when 2
               reg_event.city_workshop_2_session_text = "4-6:30pm"
            when 3
               reg_event.city_workshop_2_session_text = "Full Day"
            else
             # 
          end
      
    else
      reg_event.city_workshop_2_text = ''
      reg_event.city_workshop_2_session_text = ''      
    end 
    
    
    if reg_event.city_workshop_3
      reg_event.city_workshop_3_text = 'Chicago, IL'
      
          case reg_event.city_workshop_3_session
            when 1
               reg_event.city_workshop_3_session_text = "8:30am-3:30pm"
            when 2
               reg_event.city_workshop_3_session_text = "4-6:30pm"
            when 3
               reg_event.city_workshop_3_session_text = "Full Day"
            else
             # 
          end
      
    else
      reg_event.city_workshop_3_text = ''
      reg_event.city_workshop_3_session_text = ''      
    end 


    if reg_event.city_workshop_4
      reg_event.city_workshop_4_text = 'Houston, TX'
      
          case reg_event.city_workshop_4_session
            when 1
               reg_event.city_workshop_4_session_text = "8:30am-3:30pm"
            when 2
               reg_event.city_workshop_4_session_text = "4-6:30pm"
            when 3
               reg_event.city_workshop_4_session_text = "Full Day"
            else
             # 
          end
      
    else
      reg_event.city_workshop_4_text = ''
      reg_event.city_workshop_4_session_text = ''      
    end 


    if reg_event.city_workshop_5
      reg_event.city_workshop_5_text = 'Los Angeles / San Bernadino, CA'
      
          case reg_event.city_workshop_5_session
            when 1
               reg_event.city_workshop_5_session_text = "8:30am-3:30pm"
            when 2
               reg_event.city_workshop_5_session_text = "4-6:30pm"
            when 3
               reg_event.city_workshop_5_session_text = "Full Day"
            else
             # 
          end
      
    else
      reg_event.city_workshop_5_text = ''
      reg_event.city_workshop_5_session_text = ''      
    end 


    if reg_event.city_workshop_6
      reg_event.city_workshop_6_text = 'Richmond, VA'
      
          case reg_event.city_workshop_6_session
            when 1
               reg_event.city_workshop_6_session_text = "8:30am-3:30pm"
            when 2
               reg_event.city_workshop_6_session_text = "4-6:30pm"
            when 3
               reg_event.city_workshop_6_session_text = "Full Day"
            else
             # 
          end
      
    else
      reg_event.city_workshop_6_text = ''
      reg_event.city_workshop_6_session_text = ''      
    end 


    if reg_event.city_workshop_7
      reg_event.city_workshop_7_text = 'Minneapolis, MN'
      
          case reg_event.city_workshop_7_session
            when 1
               reg_event.city_workshop_7_session_text = "8:30am-3:30pm"
            when 2
               reg_event.city_workshop_7_session_text = "4-6:30pm"
            when 3
               reg_event.city_workshop_7_session_text = "Full Day"
            else
             # 
          end
      
    else
      reg_event.city_workshop_7_text = ''
      reg_event.city_workshop_7_session_text = ''      
    end 


    if reg_event.city_workshop_8
      reg_event.city_workshop_8_text = 'Detroit, MI'
      
          case reg_event.city_workshop_8_session
            when 1
               reg_event.city_workshop_8_session_text = "8:30am-3:30pm"
            when 2
               reg_event.city_workshop_8_session_text = "4-6:30pm"
            when 3
               reg_event.city_workshop_8_session_text = "Full Day"
            else
             # 
          end
      
    else
      reg_event.city_workshop_8_text = ''
      reg_event.city_workshop_8_session_text = ''      
    end 


    if reg_event.city_workshop_9
      reg_event.city_workshop_9_text = 'Denver, CO'
      
          case reg_event.city_workshop_9_session
            when 1
               reg_event.city_workshop_9_session_text = "8:30am-3:30pm"
            when 2
               reg_event.city_workshop_9_session_text = "4-6:30pm"
            when 3
               reg_event.city_workshop_9_session_text = "Full Day"
            else
             # 
          end
      
    else
      reg_event.city_workshop_9_text = ''
      reg_event.city_workshop_9_session_text = ''      
    end 


    if reg_event.city_workshop_10
      reg_event.city_workshop_10_text = 'Dallas, TX'
      
          case reg_event.city_workshop_10_session
            when 1
               reg_event.city_workshop_10_session_text = "8:30am-3:30pm"
            when 2
               reg_event.city_workshop_10_session_text = "4-6:30pm"
            when 3
               reg_event.city_workshop_10_session_text = "Full Day"
            else
             # 
          end
      
    else
      reg_event.city_workshop_10_text = ''
      reg_event.city_workshop_10_session_text = ''      
    end 


    if reg_event.city_workshop_11
      reg_event.city_workshop_11_text = 'Newark, NJ'
      
          case reg_event.city_workshop_11_session
            when 1
               reg_event.city_workshop_11_session_text = "8:30am-3:30pm"
            when 2
               reg_event.city_workshop_11_session_text = "4-6:30pm"
            when 3
               reg_event.city_workshop_11_session_text = "Full Day"
            else
             # 
          end
      
    else
      reg_event.city_workshop_11_text = ''
      reg_event.city_workshop_11_session_text = ''      
    end 


    if reg_event.city_workshop_12
      reg_event.city_workshop_12_text = 'San Jose, CA'
      
          case reg_event.city_workshop_12_session
            when 1
               reg_event.city_workshop_12_session_text = "8:30am-3:30pm"
            when 2
               reg_event.city_workshop_12_session_text = "4-6:30pm"
            when 3
               reg_event.city_workshop_12_session_text = "Full Day"
            else
             # 
          end
      
    else
      reg_event.city_workshop_12_text = ''
      reg_event.city_workshop_12_session_text = ''      
    end 


    if reg_event.city_workshop_13
      # reg_event.city_workshop_13_text = 'Las Vegas, NV'
      reg_event.city_workshop_13_text = 'Boston, MA'
      
          case reg_event.city_workshop_13_session
            when 1
               reg_event.city_workshop_13_session_text = "8:30am-3:30pm"
            when 2
               reg_event.city_workshop_13_session_text = "4-6:30pm"
            when 3
               reg_event.city_workshop_13_session_text = "Full Day"
            else
             # 
          end
      
    else
      reg_event.city_workshop_13_text = ''
      reg_event.city_workshop_13_session_text = ''      
    end 


    if reg_event.city_workshop_14
      reg_event.city_workshop_14_text = 'Tampa, FL'
      
          case reg_event.city_workshop_14_session
            when 1
               reg_event.city_workshop_14_session_text = "8:30am-3:30pm"
            when 2
               reg_event.city_workshop_14_session_text = "4-6:30pm"
            when 3
               reg_event.city_workshop_14_session_text = "Full Day"
            else
             # 
          end
      
    else
      reg_event.city_workshop_14_text = ''
      reg_event.city_workshop_14_session_text = ''      
    end 

    
    if reg_event.city_workshop_15
      reg_event.city_workshop_15_text = 'National Event'
    else
      reg_event.city_workshop_15_text = ''
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
          :name_title_sir,
          :name_title, 
          :type_affiliation, 
          :name_affiliation, 
          :address, 
          :city, 
          :state, 
          :zip, 
          :phone,
          :phone_mobile, 
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
          :city_workshop_15,                              
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
          :city_workshop_15_text,       
          :city_workshop_1_session,
          :city_workshop_2_session,
          :city_workshop_3_session,
          :city_workshop_4_session,
          :city_workshop_5_session,
          :city_workshop_6_session,
          :city_workshop_7_session,
          :city_workshop_8_session,
          :city_workshop_9_session,
          :city_workshop_10_session,
          :city_workshop_11_session,
          :city_workshop_12_session,
          :city_workshop_13_session,
          :city_workshop_14_session,
          :city_workshop_1_session_text,
          :city_workshop_2_session_text,
          :city_workshop_3_session_text,
          :city_workshop_4_session_text,
          :city_workshop_5_session_text,
          :city_workshop_6_session_text,
          :city_workshop_7_session_text,
          :city_workshop_8_session_text,
          :city_workshop_9_session_text,
          :city_workshop_10_session_text,
          :city_workshop_11_session_text,
          :city_workshop_12_session_text,
          :city_workshop_13_session_text,
          :city_workshop_14_session_text,
          :created_at, 
          :updated_at
          )
    end
  
end


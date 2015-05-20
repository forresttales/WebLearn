class RegCommunsController < ApplicationController
  
  layout 'reg_commun'
  

  
  def index
      redirect_to '/index'            
  end

  def new
    @reg_commun = RegCommun.new    
  end



  # def verify_recaptcha
    # b_verify_recaptcha = false
    # # if verify_recaptcha(:message => "reCAPTCHA erro")
      # # b_verify_recaptcha = true
    # # end
    # respond_to do |format|
      # format.html {}
      # format.json { render :json => { :b_verify_recaptcha => b_verify_recaptcha } }
    # end
  # end


  def create
    
      # if verify_recaptcha(:message => "reCAPTCHA erro")
    
          @reg_commun = RegCommun.new(reg_commun_params)
          reg_commun = @reg_commun
    
          if reg_commun.level_1
            reg_commun.level_1_text = 'Federal level'
          else
            reg_commun.level_1_text = ''
          end 
 
          if reg_commun.level_2
            reg_commun.level_2_text = 'State level'
          else
            reg_commun.level_2_text = ''
          end 
 
          if reg_commun.level_3
            reg_commun.level_3_text = 'Regional Authority level'
          else
            reg_commun.level_3_text = ''
          end 
       
          if reg_commun.level_4
            reg_commun.level_4_text = 'District or Campus level senior management'
          else
            reg_commun.level_4_text = ''
          end 
       
          if reg_commun.level_5
            reg_commun.level_5_text = 'Department level within managment offices'
          else
            reg_commun.level_5_text = ''
          end 
       
          if reg_commun.level_6
            reg_commun.level_6_text = 'School level senior management'
          else
            reg_commun.level_6_text = ''
          end 
       
          if reg_commun.level_7
            reg_commun.level_7_text = 'Department within School or Classroom level'
          else
            reg_commun.level_7_text = ''
          end 
      
            # 1 Mostly overall administration
            # 2 Some overall administration
            # 3 Mostly curriculum management
            # 4 Some overall curriculum management
            # 5 Mostly technical management (devices, networks, programming, storage, back-end system maintenance, telecom services, etc.)
            # 6 Some technical management
            # 7 Mostly instructional design
            # 8 Some instructional design
            # 9 Mostly procurement
            # 10 Some procurement
      
          if reg_commun.characterize_area_1
            reg_commun.characterize_area_1_text = 'Mostly overall administration'
          else
            reg_commun.characterize_area_1_text = ''
          end 
      
          if reg_commun.characterize_area_2
            reg_commun.characterize_area_2_text = 'Some overall administration'
          else
            reg_commun.characterize_area_2_text = ''
          end 
      
          if reg_commun.characterize_area_3
            reg_commun.characterize_area_3_text = 'Mostly curriculum management'
          else
            reg_commun.characterize_area_3_text = ''
          end 
      
          if reg_commun.characterize_area_4
            reg_commun.characterize_area_4_text = 'Some overall curriculum management'
          else
            reg_commun.characterize_area_4_text = ''
          end 
      
          if reg_commun.characterize_area_5
            reg_commun.characterize_area_5_text = 'Mostly technical management (devices, networks, programming, storage, back-end system maintenance, telecom services, etc.)'
          else
            reg_commun.characterize_area_5_text = ''
          end 
      
          if reg_commun.characterize_area_6
            reg_commun.characterize_area_6_text = 'Some technical management'
          else
            reg_commun.characterize_area_6_text = ''
          end 
      
          if reg_commun.characterize_area_7
            reg_commun.characterize_area_7_text = 'Mostly instructional design'
          else
            reg_commun.characterize_area_7_text = ''
          end 
      
          if reg_commun.characterize_area_8
            reg_commun.characterize_area_8_text = 'Some instructional design'
          else
            reg_commun.characterize_area_8_text = ''
          end 
      
          if reg_commun.characterize_area_9
            reg_commun.characterize_area_9_text = 'Mostly procurement'
          else
            reg_commun.characterize_area_9_text = ''
          end 
      
          if reg_commun.characterize_area_10
            reg_commun.characterize_area_10_text = 'Some procurement'
          else
            reg_commun.characterize_area_10_text = ''
          end 
      
          # 1 Individual Amazon or iTunes gift cards
          # 2 Institutional Amazon or iTunes gift cards
          # 3 Institution named-charity
          # 4 Accrue my give-away for the LC's scholarship fund for poorer schools or districts to be able to travel and attend the Gathering annual event
          # 5 Opt-out of any contests or give-aways 
      
          if reg_commun.survey_preferences_1
            reg_commun.survey_preferences_1_text = 'Individual Amazon or iTunes gift cards'
          else
            reg_commun.survey_preferences_1_text = ''
          end 
      
          if reg_commun.survey_preferences_2
            reg_commun.survey_preferences_2_text = 'Institutional Amazon or iTunes gift cards'
          else
            reg_commun.survey_preferences_2_text = ''
          end 
      
          if reg_commun.survey_preferences_3
            reg_commun.survey_preferences_3_text = 'Institution named-charity'
          else
            reg_commun.survey_preferences_3_text = ''
          end 
      
          if reg_commun.survey_preferences_4
            reg_commun.survey_preferences_4_text = "Accrue my give-away for the LC's scholarship fund for poorer schools or districts to be able to travel and attend the Gathering annual event"
          else
            reg_commun.survey_preferences_4_text = ''
          end 
      
          if reg_commun.survey_preferences_5
            reg_commun.survey_preferences_5_text = 'Opt-out of any contests or give-aways'
          else
            reg_commun.survey_preferences_5_text = ''
          end 
      
      # institution_size_text
      
      # <option value="1">Less than 2,000 students</option>
      # <option value="2">2,000-3,999 students</option>
      # <option value="3">4,000-5,999 students</option>
      # <option value="4">6,000-7,999 students</option>
      # <option value="5">8,000-10,000 students</option>
      # <option value="6">Greater than 10,000 students</option>
      # <option value="7">Don’t know</option># 
      
          if reg_commun.institution_size == '1'
            reg_commun.institution_size_text = "Less than 2,000 students"
          elsif reg_commun.institution_size == '2'
            reg_commun.institution_size_text = "2,000-3,999 students"
          elsif reg_commun.institution_size == '3'
            reg_commun.institution_size_text = "4,000-5,999 students"      
          elsif reg_commun.institution_size == '4'
            reg_commun.institution_size_text = "6,000-7,999 students"      
          elsif reg_commun.institution_size == '5'
            reg_commun.institution_size_text = "8,000-10,000 students"      
          elsif reg_commun.institution_size == '6'
            reg_commun.institution_size_text = "Greater than 10,000 students"      
          elsif reg_commun.institution_size == '7'
            reg_commun.institution_size_text = "Don't know"                  
          end 
      
      
      # employee_number_text
      
      # <option value="1">Less than 500 employees</option>
      # <option value="2">500-999 employees</option>
      # <option value="3">1,000-2,999 employees</option>
      # <option value="4">3,000-5,999 employees</option>
      # <option value="5">6,000-8,999 employees</option>
      # <option value="6">9,000+ employees</option>
      
          if reg_commun.employee_number == '1'
            reg_commun.employee_number_text = "Less than 500 employees"
          elsif reg_commun.employee_number == '2'
            reg_commun.employee_number_text = "500-999 employees"
          elsif reg_commun.employee_number == '3'
            reg_commun.employee_number_text = "1,000-2,999 employees"      
          elsif reg_commun.employee_number == '4'
            reg_commun.employee_number_text = "3,000-5,999 employees"      
          elsif reg_commun.employee_number == '5'
            reg_commun.employee_number_text = "6,000-8,999 employees"      
          elsif reg_commun.employee_number == '6'
            reg_commun.employee_number_text = "9,000+ employees"      
          end 
      
      # characterize_decision_text
      
      # <option value="1">Influencer</option>
      # <option value="2">Recommender</option>
      # <option value="3">Decision Maker</option>
      # <option value="4">Budget Officer</option>
      # <option value="5">None of the above</option>
      
          if reg_commun.characterize_decision == '1'
            reg_commun.characterize_decision_text = "Influencer"
          elsif reg_commun.characterize_decision == '2'
            reg_commun.characterize_decision_text = "Recommender"
          elsif reg_commun.characterize_decision == '3'
            reg_commun.characterize_decision_text = "Decision Maker"      
          elsif reg_commun.characterize_decision == '4'
            reg_commun.characterize_decision_text = "Budget Officer"      
          elsif reg_commun.characterize_decision == '5'
            reg_commun.characterize_decision_text = "None of the above"      
          end 
      
      
          @reg_commun = reg_commun
          
          if @reg_commun.save
            
            session[:reg_commun_saved] = true
            
            mail = RegCommunMailer.welcome_email(@reg_commun)
            mail.deliver
       
              # format.html { redirect_to(@user, notice: 'User was successfully created.') }
              # format.json { render json: @user, status: :created, location: @user }
            # else
              # format.html { render action: 'new' }
              # format.json { render json: @user.errors, status: :unprocessable_entity }
                    
            
          else
      
            session[:reg_commun_saved] = nil
      
          end
    
      # else
        # flash[:captcha] = '* reCAPTCHA entry failed. Nothing was saved. Please try, again.'
        # redirect_to :action => 'new'
      # end

    
  end


  def show
  end


  
  private

    def reg_commun_params
      params.require(:reg_commun).permit( 
                                          :name_first, 
                                          :name_last, 
                                          :name_title, 
                                          :name_affiliation, 
                                          :public_private, 
                                          :address, 
                                          :city, 
                                          :state, 
                                          :zip, 
                                          :phone, 
                                          :email, 
                                          :level_1, 
                                          :level_2, 
                                          :level_3,
                                          :level_4,
                                          :level_5,
                                          :level_6,
                                          :level_7,
                                          :level_1_text,
                                          :level_2_text,
                                          :level_3_text,
                                          :level_4_text,
                                          :level_5_text,
                                          :level_6_text,
                                          :level_7_text,
                                          :level_other,          
                                          :institution_size,
                                          :institution_size_text,
                                          :employee_number,
                                          :employee_number_text,
                                          :characterize_decision, 
                                          :characterize_decision_text,
                                          :characterize_area_1,
                                          :characterize_area_2,
                                          :characterize_area_3,
                                          :characterize_area_4,
                                          :characterize_area_5,
                                          :characterize_area_6,
                                          :characterize_area_7,
                                          :characterize_area_8,
                                          :characterize_area_9,
                                          :characterize_area_10,
                                          :characterize_area_1_text,
                                          :characterize_area_2_text,
                                          :characterize_area_3_text,
                                          :characterize_area_4_text,
                                          :characterize_area_5_text,
                                          :characterize_area_6_text,
                                          :characterize_area_7_text,
                                          :characterize_area_8_text,
                                          :characterize_area_9_text,
                                          :characterize_area_10_text,
                                          :characterize_area_other,
                                          :survey_preferences_1,
                                          :survey_preferences_2,
                                          :survey_preferences_3,
                                          :survey_preferences_4,
                                          :survey_preferences_5,
                                          :survey_preferences_1_text,
                                          :survey_preferences_2_text,
                                          :survey_preferences_3_text,
                                          :survey_preferences_4_text,
                                          :survey_preferences_5_text,
                                          :created_at, 
                                          :updated_at
                                         )
    end
  
end


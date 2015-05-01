class RegEventConferencesController < ApplicationController

  layout 'reg_event'



  def new

    @reg_event_conference = RegEventConference.new
    
  end


  def create

    if verify_recaptcha(:message => "reCAPTCHA erro")

        @reg_event_conference = RegEventConference.new(reg_event_conference_params)
        
        reg_event_conference = @reg_event_conference
    
        type_affiliation = reg_event_conference.type_affiliation
    
        case type_affiliation  
          when "1"
            reg_event_conference.type_affiliation = "Institute"
          when "2"
            reg_event_conference.type_affiliation = "Company"
          when "3"
            reg_event_conference.type_affiliation = "OTHER"
          else
            #        
        end
    
        @reg_event_conference = reg_event_conference
        
        if @reg_event_conference.save
          session[:reg_event_conference_saved] = true
          mail = RegEventConferenceMailer.welcome_email(@reg_event_conference)
          mail.deliver
        else
          session[:reg_event_conference_saved] = nil
        end

      else
        flash[:captcha] = '* reCAPTCHA entry failed. Nothing was saved. Please try, again.'
        redirect_to :action => 'new'
      end
    
  end


  
  private

    def reg_event_conference_params
      params.require(:reg_event_conference).permit(
                                                    :name_first, 
                                                    :name_last, 
                                                    :name_title,
                                                    :position_title, 
                                                    :type_affiliation, 
                                                    :name_affiliation, 
                                                    :address, 
                                                    :city, 
                                                    :state, 
                                                    :zip, 
                                                    :phone,
                                                    :phone_mobile, 
                                                    :email,
                                                    :topic,
                                                    :description 
                                                  )
                                                  
    end

  
end


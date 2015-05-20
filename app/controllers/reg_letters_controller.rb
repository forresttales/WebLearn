class RegLettersController < ApplicationController
  

  layout 'reg_letter'
  
    
  def index
      redirect_to '/index'
  end


  def new
    @reg_letter = RegLetter.new    
  end


  def create

      # email = params[:reg_letter][:email]
      # Rails.logger.info 'email = ' + email
      # render text: email.to_s        
      @reg_letter = RegLetter.new(reg_letter_params)
      if verify_recaptcha(:message => "reCAPTCHA erro")
          if @reg_letter.save
            session[:reg_letter_saved] = true
            mail = RegLetterMailer.welcome_email(@reg_letter)
            mail.deliver
          else
            session[:reg_letter_saved] = nil
          end
      else
        # flash[:captcha] = '* reCAPTCHA entry failed. Please try, again.'
        @reg_letter_flash_error = '* reCAPTCHA entry failed. Please try, again.'
        render :action => 'new'
      end
        
  end


  def show
  end
  
  
  private

    def reg_letter_params
      params.require(:reg_letter).permit(
                                          :email, 
                                          :name_title, 
                                          :name_affiliation,
                                          :prof_title,
                                          :name_first,
                                          :name_last,
                                          :pub_priv,
                                          :address,
                                          :city,
                                          :state,
                                          :zip,
                                          :country,
                                          :phone
                                        )
    end
  
end




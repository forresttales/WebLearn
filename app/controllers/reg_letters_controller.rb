class RegLettersController < ApplicationController
  
  layout 'reg_letter'
  
    
  def index
      redirect_to '/index'
  end

  def new
    @reg_letter = RegLetter.new    
  end

  def create
    
    # respond_to do |format|

      # if verify_recaptcha(:model => @reg_letter, :message => "Oh! It's error with reCAPTCHA!") && @reg_letter.save
      if verify_recaptcha(:message => "reCAPTCHA erro")
        
          @reg_letter = RegLetter.new(reg_letter_params)
          
          if @reg_letter.save
            
            session[:reg_letter_saved] = true
            
            mail = RegLetterMailer.welcome_email(@reg_letter)
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
            session[:reg_letter_saved] = nil
          end

      else
        flash[:captcha] = '* reCAPTCHA entry failed. Please try, again.'
        redirect_to :action => 'new'
      end

        
  end




  def show
  end
  
  
  
  
  private

    def reg_letter_params
      params.require(:reg_letter).permit(:email, :name_title, :name_affiliation)
    end
  
end




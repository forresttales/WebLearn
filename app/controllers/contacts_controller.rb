class ContactsController < ApplicationController
  
  layout 'contact'
  

  
  def index
      redirect_to '/index'    
  end

  
  def new
    @contact = Contact.new
  end

  
  def show
    #@contact = Contact.find_by_id(params[:saved_id])
  end

  
  def create
    
      if verify_recaptcha(:message => "reCAPTCHA erro")
          @contact = Contact.new(params[:contact])
          if @contact.save
            session[:contact_saved] = true
            # mail = RegLetterMailer.welcome_email(@reg_letter)
            # mail.deliver
          else
            session[:contact_saved] = nil
          end
      else
        flash[:captcha] = '* CAPTCHA entry at bottom failed. Please try again.'
        #flash[:captcha] = '* reCAPTCHA entry failed. Please try, again.'
        redirect_to :action => 'new'
      end
    
  end

  
  def edit
    @contact = Contact.find_by_id(params[:id])    
  end
  
  def update
  end


  def delete
  end


  def destroy
  end
  
end


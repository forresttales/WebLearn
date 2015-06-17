class ContactsController < ApplicationController
  
  layout 'contact'
  


  @@contact = nil
  @@contact_flash_msg = nil
  
  # def index
      # redirect_to :action => 'new'    
  # end

  
  def new

      if !@@contact.nil?
          @contact = @@contact
          if !@@contact_flash_msg.nil?
              @contact_flash_msg = @@contact_flash_msg
          end
      else
          @contact = Contact.new  
      end      

      @@contact = nil
      @@contact_flash_msg = nil      

      # if defined? contact_flash_error
          # @contact_flash_error = contact_flash_error
      # end
     
  end


  # def new_contact(contact_flash_error, contact)
    # @contact_flash_error = contact_flash_error
    # @contact = contact
  # end  

  
  def create
    
      contact = Contact.new(params[:contact])
      # if verify_recaptcha(:message => "reCAPTCHA erro")
      if verify_recaptcha
          # @contact = Contact.new(params[:contact])
          if contact.save
            session[:contact_saved] = true
            @contact = contact
            # mail = RegLetterMailer.welcome_email(@reg_letter)
            # mail.deliver
          else
            session[:contact_saved] = nil
          end
      else
        # flash[:captcha] = '* CAPTCHA entry at bottom failed. Please try again.'
        @@contact = contact
        @@contact_flash_msg = '* CAPTCHA entry at bottom failed. Please try again.'
        #flash[:captcha] = '* reCAPTCHA entry failed. Please try, again.'
        redirect_to :action => 'new'
        # render :action => 'new'
        # render new_contact
        # render :file => 'contacts/new.html.erb'
        # render :file => '/ContactUs'
      end
    
  end


  # def show
    # #@contact = Contact.find_by_id(params[:saved_id])
  # end
  # def edit
    # # @contact = Contact.find_by_id(params[:id])    
  # end
  # def update
  # end
  # def delete
  # end
  # def destroy
  # end
  
end


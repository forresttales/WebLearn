class RegLetterMailer < ActionMailer::Base
  
  default from: "forresttales@hotmail.com"
 
  def welcome_email(reg_letter)
    @reg_letter = reg_letter
    #@url  = 'http://example.com/login'
    #mail(to: user.email, subject: 'Welcome to My Awesome Site')
    
    mail(:to => reg_letter.email, :subject => 'The Learning Counsel') do |format|
      format.html #{ render layout: 'my_layout' }
      #format.text
    end
    
    #mail(:to => recipient.email_address_with_name, :bcc => ["bcc@example.com", "Order Watcher <watcher@example.com>"])    
    
  end  
end

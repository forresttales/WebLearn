class TestOptoutMailer < ActionMailer::Base
  
  default from: "forresttales@hotmail.com"
 
  def welcome_email(test_optout)
    @test_optout = test_optout
    #@url  = 'http://example.com/login'
    #mail(to: user.email, subject: 'Welcome to My Awesome Site')
    @url = "thelearningcounsel.com/EmailPreferences/" + @test_optout.col_id.to_s
    # mail(:to => test_optout.col_18, :subject => 'The Learning Counsel Optout') do |format|
    mail(:to => "forresttales@hotmail.com", :subject => 'The Learning Counsel Optout') do |format|

      format.html #{ render layout: 'my_layout' }
      #format.text
    end
    
    #mail(:to => recipient.email_address_with_name, :bcc => ["bcc@example.com", "Order Watcher <watcher@example.com>"])    
    
  end  
    
end

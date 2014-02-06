class RegSeminarMailer < ActionMailer::Base
  
  default from: "forresttales@hotmail.com"
 
  def welcome_email(reg_seminar)
    
    @reg_seminar = reg_seminar
    
    b_cc_1 = false
    b_cc_2 = false
    
    if reg_seminar.email_cc_1.length > 0
      b_cc_1 = true
    end
    if reg_seminar.email_cc_2.length > 0
      b_cc_2 = true
    end

    attachments.inline['logo-icon-come-together.png'] = File.read(Rails.root.join('public/repository/logo-icon-come-together.png'))
    
    if !b_cc_1 and !b_cc_2      

      mail(:to => reg_seminar.email, :subject => 'The Learning Counsel') do |format|
        format.html
      end

    elsif b_cc_1 and !b_cc_2

      mail(:to => reg_seminar.email, :subject => 'The Learning Counsel', :cc => [reg_seminar.email_cc_1]) do |format|
        format.html
      end    

    elsif !b_cc_1 and b_cc_2

      mail(:to => reg_seminar.email, :subject => 'The Learning Counsel', :cc => [reg_seminar.email_cc_2]) do |format|
        format.html
      end    

    elsif b_cc_1 and b_cc_2

      mail(:to => reg_seminar.email, :subject => 'The Learning Counsel', :cc => [reg_seminar.email_cc_1, reg_seminar.email_cc_2]) do |format|
        format.html
      end    

    else
      #
    end    
    
    
    #@url  = 'http://example.com/login'
    #mail(to: user.email, subject: 'Welcome to My Awesome Site')

    # mail(:to => reg_event.email, :subject => 'The Learning Counsel') do |format|
      # format.html #{ render layout: 'my_layout' }
      # #format.text
    # end
    
    #mail(:to => recipient.email_address_with_name, :bcc => ["bcc@example.com", "Order Watcher <watcher@example.com>"])    
    
  end
    
end

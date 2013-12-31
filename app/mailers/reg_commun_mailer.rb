class RegCommunMailer < ActionMailer::Base
  
  default from: "forresttales@hotmail.com"
 
  def welcome_email(reg_commun)
    
    @reg_commun = reg_commun
    
    attachments.inline['logo-icon-come-together.png'] = File.read(Rails.root.join('public/repository/logo-icon-come-together.png'))

    mail(:to => reg_commun.email, :subject => 'The Learning Counsel') do |format|
      format.html #{ render layout: 'my_layout' }
      #format.text
    end
    
    # attachments.inline['logo-icon-come-together.png'] = File.read('..repository/logo-icon-come-together.png')
#     
    # mail(:to => reg_commun.email, :subject => 'The Learning Counsel') do |format|
      # format.html #{ render layout: 'my_layout' }
      # #format.text
    # end
    
  end
  
end

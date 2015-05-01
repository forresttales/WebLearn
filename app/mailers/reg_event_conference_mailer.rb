class RegEventConferenceMailer < ActionMailer::Base
  
  default from: "forresttales@hotmail.com"
 
  def welcome_email(reg_event_conference)
    
    @reg_event_conference = reg_event_conference
    
    attachments.inline['logo-icon-come-together.png'] = File.read(Rails.root.join('public/repository/logo-icon-come-together.png'))
    
    mail(:to => reg_event_conference.email, :subject => 'The Learning Counsel') do |format|
      format.html
    end

    
  end

    
end

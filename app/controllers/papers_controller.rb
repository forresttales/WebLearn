class PapersController < ApplicationController
  
  layout 'paper'

  respond_to :html, :js, :json  

  before_action :set_no_cache, only: [:index]
  before_action :verify_registration, only: [:index]

  def set_no_cache
    
    # if request.format == "js"
      response.headers['Cache-Control'] = 'no-cache, no-store, must-revalidate' # HTTP 1.1.
      response.headers['Pragma'] = 'no-cache' # HTTP 1.0.
      response.headers['Expires'] = '0' # Proxies.
    # end    


  end


  def verify_registration

      commun_reg_email = read_confirmation
      if ((commun_reg_email.blank?) or (commun_reg_email.empty?) or (commun_reg_email.nil?))
          gon.commun_registered = false
          gon.commun_reg_email = 'no entry'
      else
          b_reg_commun_exists = RegCommun.exists?(:email => email) rescue nil            
          b_reg_commun_record = false        
          if b_reg_commun_exists
            b_reg_commun_record = true
          end
        
          gon.commun_registered = true
          gon.commun_reg_email = commun_reg_email
      end
    
  end
  
  
  
  def index

      b_reg_commun_record = false
      commun_reg_email = read_confirmation
      if !((commun_reg_email.blank?) or (commun_reg_email.empty?) or (commun_reg_email.nil?))
          b_reg_commun_record = confirm_reg_commun(commun_reg_email)
      end
      gon.reg_commun_confirmed = b_reg_commun_record
      
  end


  def confirm_reg_commun(email)

      b_reg_commun_record = false    
      if !((email.blank?) or (email.empty?) or (email.nil?))
          b_reg_commun_exists = RegCommun.exists?(:email => email)            
          if b_reg_commun_exists
            b_reg_commun_record = true
          end
      end
    
      return b_reg_commun_record
  end  


  def search_contact
    
    ar = params[:dl_contact]
    h_obj = Hash.new
    ar.each do |obj|
      h_obj = obj
    end
  
    email = h_obj[:email]
    # int_pdf = h_obj[:int_pdf]
    # rd_win = h_obj[:rd_win]

      
    b_reg_commun_record = false
    b_reg_commun_exists = RegCommun.exists?(:email => email)        
    if b_reg_commun_exists
      set_confirmation(email)
      b_reg_commun_record = true
    end

    respond_to do |format|
      format.html {}
      format.json { render :json => { :b_reg_commun_record => b_reg_commun_record,
                                      :email => email } }
    end
    
    # respond_to do |format|
      # format.html {}
      # format.json { render :json => { :b_reg_commun_record => b_reg_commun_record,
                                      # :int_pdf => int_pdf,
                                      # :rd_win => rd_win,
                                      # :email => email } }
    # end

    
  end
  
      
end

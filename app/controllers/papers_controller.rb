class PapersController < ApplicationController
  
  layout 'application'

  respond_to :html, :js, :json  


  
  def index
    
  end
  


  def search_contact
    
    ar = params[:dl_contact]
    h_obj = Hash.new
    ar.each do |obj|
      h_obj = obj
    end
  
    email = h_obj[:email]
    int_pdf = h_obj[:int_pdf]
    rd_win = h_obj[:rd_win]

    reg_commun = RegCommun.where("email = ?", email)
      
    b_reg_commun_record = false        
    if reg_commun.any?
      b_reg_commun_record = true
    end
    
    respond_to do |format|
      format.html {}
      format.json { render :json => { :b_reg_commun_record => b_reg_commun_record,
                                      :int_pdf => int_pdf,
                                      :rd_win => rd_win,
                                      :email => email } }
    end

  
      # h_update = Hash.new
      # h_update[:email] = h_obj[:email]
      # h_update[:phone] = h_obj[:phone]
      # h_update[:int_pdf] = h_obj[:int_pdf]
      # dl_contact = DlContact.new(h_update)
      # if dl_contact.save
        # #
      # else
        # # Rails.logger.info(@user.errors.messages.inspect)
      # end
    
    
  end
  
      
end

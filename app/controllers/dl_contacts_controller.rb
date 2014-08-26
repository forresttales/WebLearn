class DlContactsController < ApplicationController
  
  # layout ''

  respond_to :html, :js, :json  
    

  def create_dl
    
      ar = params[:dl_contact]
      h_obj = Hash.new
      ar.each do |obj|
        h_obj = obj
      end
  
      h_update = Hash.new
      h_update[:email] = h_obj[:email]
      h_update[:phone] = h_obj[:phone]
      h_update[:int_pdf] = h_obj[:int_pdf]

      dl_contact = DlContact.new(h_update)
  
      if dl_contact.save
        #
      else
        # Rails.logger.info(@user.errors.messages.inspect)
      end
  
      respond_to do |format|
        format.html {}
        format.json { render :json => {} }      
      end
    
        
  end

  
  private

    def reg_letter_params
      params.require(:dl_contact).permit(
                                          :email,
                                          :phone, 
                                          :name_first, 
                                          :name_last, 
                                          :name_title, 
                                          :position_title, 
                                          :name_pdf,
                                          :int_pdf
                                        )
    end

  
end

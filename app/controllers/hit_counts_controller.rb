class HitCountsController < ApplicationController

  layout 'application'

  respond_to :html, :js, :json  



  def create_hit

      # Rails.logger.info('hit_counts/create')
      
      ar = params[:hit_count]
      h_obj = Hash.new
      ar.each do |obj|
        h_obj = obj
      end
  
      record_hit_id = h_obj[:record_hit_id]

      commun_reg_email = read_confirmation
      if ((commun_reg_email.blank?) or (commun_reg_email.empty?) or (commun_reg_email.nil?))
          commun_reg_email = ""
      end
      
      h_hit_count = Hash.new
      h_hit_count[:item_register_id] = record_hit_id
      h_hit_count[:user_email] = commun_reg_email
    
      hit_count = HitCount.new(h_hit_count)
      if hit_count.save
          #
      else
          # => log error
      end
    
      respond_to do |format|
        format.html {}
        format.js
        # format.json {}
        # format.json { render :json => { 
                                        # :item_register_id => record_hit_id,
                                        # :user_email => commun_reg_email
                                      # } 
                    # }
      end

    
  end


end


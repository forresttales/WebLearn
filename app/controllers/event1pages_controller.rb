class Event1pagesController < ApplicationController
  

  respond_to :html, :js  

  layout 'event1page'
  
  
  def index
    
    # #@reg_event_itins = RegEventItin.all
    # # @reg_event_itins = RegEventItin.find(:all, :order => "order_display ASC")
    # @reg_event_itins = RegEventItin.order("order_display ASC")
    # gon.cnt = @reg_event_itins.count
    # respond_to do |format|
      # format.html
      # format.js
    # end
        
  end

  
  
  def new
    
  end


  def show
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end

  def delete
  end

  def destroy
  end

  
end

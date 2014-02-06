class Event2pagesController < ApplicationController

  respond_to :html, :js    
  
  layout 'event2page'

  
  def index
    

    respond_to do |format|
      format.html
      format.js
    end

        
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
class TabletsController < ApplicationController

  respond_to :html, :js  
  
  layout 'tablet'
  
  
  def index

    respond_to do |format|
      format.html
      format.csv
      format.js
    end
        
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

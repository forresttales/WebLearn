class ArchivesController < ApplicationController
  
  layout 'application'
  
  def index
  end

  def new
  end

  def show
    @info = Archive.where(["article_id = ?", params[:id]]).first       

    #render text: @info.name_file

    gon.info = @info
    
     
    #render :file => "journal/pearson"
        
  end

  def update
  end

  def create
  end
end

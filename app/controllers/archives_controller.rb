class ArchivesController < ApplicationController
  
  layout 'archive'
  
  def index

  end

  def new
  end

  def show

    @info = Archive.friendly.find(params[:id])       
    
    if request.path != archive_path(@info)
      redirect_to @info, status: :moved_permanently
    end    
    
    # @info = Archive.where(["article_id = ?", params[:id]]).first       
    
    gon.info = @info
     
    #render :file => "journal/pearson"
        
  end

  def update
  end

  def create
  end
end

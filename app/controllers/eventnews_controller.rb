class EventnewsController < ApplicationController

  layout 'eventnew'

  
  def index
  end


  def new
  end


  def show

    # @info = Slug.find_by_slug('6').target
    

    # @info = Archive.find_by_id()       

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

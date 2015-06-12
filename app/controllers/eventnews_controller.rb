class EventnewsController < ApplicationController

  layout 'eventnew'

  respond_to :html, :js, :json  


  def event_photos
    gon.montage_start = 6
  end
  
  
  def photos_1
    respond_to do |format|
      # format.html
      format.js
    end
  end

  def photos_2
    respond_to do |format|
      format.js
    end
  end

  def photos_3
    respond_to do |format|
      # format.html
      format.js
    end
  end

  def photos_4
    respond_to do |format|
      # format.html
      format.js
    end
  end

  def photos_5
    respond_to do |format|
      # format.html
      format.js
    end
  end

  def photos_6
    respond_to do |format|
      # format.html
      format.js
    end
  end

  def photos_7
    respond_to do |format|
      # format.html
      format.js
    end
  end


  
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


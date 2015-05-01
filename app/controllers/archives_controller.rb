class ArchivesController < ApplicationController
  
  layout 'archive'
  
  def index

  end

  def new
  end

  def show

    # @info = Slug.find_by_slug('6').target
    # @info = Archive.find_by_id()       

    id = params[:id]

    case id.to_s
      when "2020"
        id = "Revising-Adoption-of-Curriculum-Materials-and-the-Hidden-Inequity"
      when "35-New-Capabilities-of-Digital-Curriculum-that-put-Textbooks-in-the-Dust"
        id = "35-New-Capabilities-of-Digital-Curriculum-that-left-Textbooks-in-the-Dust"                          
      else
       # 
    end

    # @info = Archive.friendly.find(params[:id])       
    @info = Archive.friendly.find(id)       
     
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

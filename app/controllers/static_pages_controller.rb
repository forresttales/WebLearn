class StaticPagesController < ApplicationController
  
  layout 'application'

  
  def has_entry(e)
      has = false
      if !((e.blank?) or (e.empty?) or (e.nil?)) 
          has = true
      end
      return has
  end
  
  
  def index

      # type          article_type
      # slug          slug
      # url           linkimg_url
      # image         linkimg         
      # subtitle_1    subtitle_1
      # subtitle_2    subtitle_2
      # author        name_author
      
      archives = Archive.all
      
      @archives = archives
      
      gon.archives = []
      a_archives = []
      archives.each do |archive|
          # a_archive = [complete, img_path, type, slug, subtitle_1, subtitle_2, author]
          complete = false
          img_path = ActionController::Base.helpers.asset_path(archive.linkimg)
          # img_path = ""
          linkimg = archive.linkimg
          type = archive.article_type
          slug = archive.slug
          subtitle_1 = archive.subtitle_1
          subtitle_2 = archive.subtitle_2
          author = archive.name_author
          img_height = archive.img_height

          if ( # has_entry(linkimg) and
               # has_entry(img_path) and
               # has_entry(type) and
               has_entry(slug) and
               has_entry(subtitle_1)
               # has_entry(img_height.to_s) and
               # has_entry(author) 
               )
            
              # img_path = "/assets/" + linkimg
              complete = true
              # Rails.logger.info("complete true = " + archive.id.to_s)
          end          
          
          if(type.downcase == "event news")
              type = "event_news"
          end
          
          a_archive = [complete, img_path, type.downcase, slug, subtitle_1, subtitle_2, author, img_height]
          a_archives[archive.id] = a_archive
      end

      gon.archives = a_archives


  end

  
  def articles
      @archives = Archive.friendly.all
  end

  
  def event_articles
      @archives = Archive.friendly.all
  end

  
  def home
  end
  
  def about
  end
  
  def edmatchup
  end
  
  def events
  end
  
  def help
  end
  
  def news
  end
  
  def reports
  end
  
  def report
    # render text: 'in report'
  end
  
  def show
    
    #id_sent = params[:id]
    
    # @article = Article.where(["article_id = ?", params[:id]]).first       
    
    # render text: @article.name_file
#     
    # render text: 'in show id ' + id_sent
    
    #render :file => "journals/pearson"
  end
  
  def getPartial
    
    # render :partial => "http://localhost:3000/journal/pearson"
  end
end


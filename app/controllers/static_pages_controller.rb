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
  end

  
  def articles

      # @archives = Archive.friendly.all
      
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
          linkimg = archive.linkimg
          if(!linkimg.nil?)
            img_path = ActionController::Base.helpers.asset_path(archive.linkimg)
            img_height = archive.img_height
          else
            imp_path = nil            
          end
          subtitle_1 = archive.subtitle_1
          subtitle_2 = archive.subtitle_2

          linkimg_carousel = archive.linkimg_carousel
          if(!linkimg_carousel.nil?)
            img_path_carousel = ActionController::Base.helpers.asset_path(archive.linkimg_carousel)
            img_height_carousel = archive.img_height_carousel
          else
            imp_path_carousel = nil            
          end
          subtitle_1_carousel = archive.subtitle_1_carousel
          subtitle_2_carousel = archive.subtitle_2_carousel

          author = archive.name_author
          type = archive.article_type
          slug = archive.slug
          
          Rails.logger.info(type)
          
          if ( has_entry(slug) )
              complete = true
          end          
          
          if(type.downcase == "event news")
              type = "event_news"
          end
          
          # a_archive = [complete, img_path, type.downcase, slug, subtitle_1, subtitle_2, author, img_height]
          # a_archive = [
                        # img_path, 
                        # img_height, 
                        # subtitle_1, 
                        # subtitle_2, 
                        # img_path_carousel, 
                        # img_height_carousel, 
                        # subtitle_1_carousel, 
                        # subtitle_2_carousel, 
                        # author, 
                        # type.downcase, 
                        # slug,
                        # complete
                      # ]

          a_archive = [img_path, img_height, subtitle_1, subtitle_2, img_path_carousel, img_height_carousel, subtitle_1_carousel, subtitle_2_carousel, author, type.downcase, slug, complete]
                      
          a_archives[archive.id] = a_archive
      end

      gon.archives = a_archives
      
      
  end

  
  def event_articles
      # @archives = Archive.friendly.all
      
      archives = Archive.all
      
      @archives = archives
      
      gon.archives = []
      a_archives = []
      archives.each do |archive|
          # a_archive = [complete, img_path, type, slug, subtitle_1, subtitle_2, author]
          complete = false
          linkimg = archive.linkimg
          if(!linkimg.nil?)
            img_path = ActionController::Base.helpers.asset_path(archive.linkimg)
            img_height = archive.img_height
          else
            imp_path = nil            
          end
          subtitle_1 = archive.subtitle_1
          subtitle_2 = archive.subtitle_2

          linkimg_carousel = archive.linkimg_carousel
          if(!linkimg_carousel.nil?)
            img_path_carousel = ActionController::Base.helpers.asset_path(archive.linkimg_carousel)
            img_height_carousel = archive.img_height_carousel
          else
            imp_path_carousel = nil            
          end
          subtitle_1_carousel = archive.subtitle_1_carousel
          subtitle_2_carousel = archive.subtitle_2_carousel

          author = archive.name_author
          type = archive.article_type
          slug = archive.slug
          
          Rails.logger.info(type)
          
          if ( has_entry(slug) )
              complete = true
          end          
          
          if(type.downcase == "event news")
              type = "event_news"
          end
          
          # a_archive = [complete, img_path, type.downcase, slug, subtitle_1, subtitle_2, author, img_height]
          # a_archive = [
                        # img_path, 
                        # img_height, 
                        # subtitle_1, 
                        # subtitle_2, 
                        # img_path_carousel, 
                        # img_height_carousel, 
                        # subtitle_1_carousel, 
                        # subtitle_2_carousel, 
                        # author, 
                        # type.downcase, 
                        # slug,
                        # complete
                      # ]

          a_archive = [img_path, img_height, subtitle_1, subtitle_2, img_path_carousel, img_height_carousel, subtitle_1_carousel, subtitle_2_carousel, author, type.downcase, slug, complete]
                      
          a_archives[archive.id] = a_archive
      end

      gon.archives = a_archives
      
      
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



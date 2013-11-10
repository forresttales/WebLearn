class StaticPagesController < ApplicationController
  
  layout 'application'
  
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
    render text: 'in report'
  end
  
  def show
    
    #id_sent = params[:id]
    
    @article = Article.where(["article_id = ?", params[:id]]).first       
    
    render text: @article.name_file
#     
    # render text: 'in show id ' + id_sent
    
    #render :file => "journals/pearson"
  end
  
  def getPartial
    
    render :partial => "http://localhost:3000/journal/pearson"
  end
end


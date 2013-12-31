class LandingsController < ApplicationController
  
  layout 'landing'
  
  skip_before_filter :verify_authenticity_token, :only => [:show, :secretlanding, :create, :new]  
  
  respond_to :html, :json
    
  def index
      
  end
  
  def show
    @landing = Landing.new
    
  end

  def new
    @landing = Landing.new
        
  end

  def create

    # parsed_json = JSON.parse(params[:data]) no success with this - yet
    
    # strg = "{\"name\":\"klyde\",\"email\":\"clyde@home\",\"company\":\"Home Comp\"}"
    # parsed_json = JSON.parse(strg)

    # landing = Landing.new
    # landing.name = parsed_json["name"]
    # landing.email = parsed_json["email"]
    # landing.company = parsed_json["company"]


    landing = Landing.new(landing_params)
    
    #  name_promo :string(50)
    #  id_promo   :integer
    
    landing.name_promo = "2013 December"
    landing.id_promo = "1"

    if landing.save
      #
    else
      #
    end

    # respond_to do |format|
      # format.js           
      # format.html
    # end    
    
        
  end

  
  private

    def landing_params
      params.require(:landing).permit(:email, :name, :company)
    end
  
end

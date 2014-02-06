class RegSeminarsController < ApplicationController

  layout 'reg_seminar'

  respond_to :html, :js  


  def index

    # redirect_to '/new'
    
    # respond_to do |format|
      # format.html
      # format.js
    # end

  end


  def new
    @reg_seminar = RegSeminar.new
    
    respond_to do |format|
      format.html
      format.js
    end

  end


  def create

    @reg_seminar = RegSeminar.new(reg_seminar_params)
    
    reg_seminar = @reg_seminar

    type_affiliation = reg_seminar.type_affiliation

    case type_affiliation  
      when "1"
        reg_seminar.type_affiliation = "Institute"
      when "2"
        reg_seminar.type_affiliation = "Company"
      when "3"
        reg_seminar.type_affiliation = "OTHER"
      else
        #        
    end
    
    
    if reg_seminar.seminar_1
      reg_seminar.seminar_1_text = "2014 Trends Internet Seminar – February 19th, 11am PST / 1pm CST/ 2pm EST"  
    end 



    
    @reg_seminar = reg_seminar
    
    if @reg_seminar.save
      
      session[:reg_seminar_saved] = true
      
      mail = RegSeminarMailer.welcome_email(@reg_seminar)
      mail.deliver
 
        # format.html { redirect_to(@user, notice: 'User was successfully created.') }
        # format.json { render json: @user, status: :created, location: @user }
      # else
        # format.html { render action: 'new' }
        # format.json { render json: @user.errors, status: :unprocessable_entity }
              
        # case account_type= params[:account_type]
        # when "School"
          # redirect_to(:controller => 'institutes', :action => 'new')
        # when "Teacher"
          # redirect_to(:controller => 'teachers', :action => 'new')
        # when "Student"
          # redirect_to(:controller => 'students', :action => 'new')
        # when "Publisher"
          # redirect_to(:controller => 'publishers', :action => 'new')
        # else
          # # alert error redirect
        # end
      
    else

      session[:reg_seminar_saved] = nil

    end
    
  end


  def show
  end
  
  
  private

    def reg_seminar_params
      params.require(:reg_seminar).permit(
          :name_first, 
          :name_last, 
          :name_title, 
          :type_affiliation, 
          :name_affiliation, 
          :address, 
          :city, 
          :state, 
          :zip, 
          :phone, 
          :email, 
          :email_cc_1, 
          :email_cc_2, 
          :seminar_1,
          :seminar_1_text,
          :created_at, 
          :updated_at
          )
    end

end

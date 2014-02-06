class PublishersController < ApplicationController
  
  layout 'publisher'

  #before_filter :confirm_logged_in
  
  def index
    @publisher = Publisher.where(["user_id = ?", session[:user_id]]).first       
    @username = session[:username]
    
    publisher = @publisher
    # @admin_user_profile = AdminUserProfile.find(session[:admin_user_id])    
    
    session[:publisher_id] = publisher.id
    
    publisher_image = PublisherImage.where("publisher_images.publisher_id = ? AND publisher_images.primary = ?", session[:publisher_id], true)       

    if publisher_image.count > 0
      image_name = publisher_image[0].image_name
      gon.image_name = image_name
    else
      gon.image_name = ''
    end
    
  end
  
  
  def settings
    @publisher = Publisher.find_by_id(session[:publisher_id])   
  end


  def show
    @publisher = Publisher.find_by_id(session[:publisher_id])   
  end

  
  def new
    
    if !(session[:username].nil? or session[:user_id].nil?)
      @username = session[:username]
      @publisher = Publisher.new
    else
      render text: 'failed sessions'
    end
    
  end

  
  def create
    @publisher = Publisher.new(publisher_params)
    @publisher.user_id = session[:user_id]
    user = User.find(session[:user_id])

    if user.update_columns( :has_account => true, :account_type => "publisher")      
      if @publisher.save
        
        session[:has_account] = true
        session[:account_type] = "publisher"    
        session[:profile] = "publishers/home"
        
        redirect_to(:action => 'index')
      else
        render text: 'save publisher failed'
        #render("new")
      end
    else
      render text: 'update user_id failed'
    end
    
    # if @user.update_attribute(:has_account, TRUE)
      # if @user.update_attribute(:account_type, "student")
        # if @student.save
          # flash[:notice] = 'Student account created'
          # #redirect_to(:action => 'list')
        # else
          # flash.now[:notice] = "Account create failed"
#           
          # render("new")
        # end
      # else
        # flash[:notice] = 'User update failed'      
      # end
    # else
      # flash[:notice] = 'User update failed'      
    # end
    
  end
  

  def edit
    @publisher = Publisher.find(params[:id])
  end
  
  
  def update
    
    # render text: 'update'
    
    @publisher = Publisher.find(params[:id])    
    if @publisher.update_attributes(params[:publisher])
      redirect_to(:action => 'show', :saved_id => @publisher.id)
    else
      render text: 'update failed'
    end    

  end


  def delete
    # @admin_user = AdminUser.find(params[:id])
  end


  def destroy
    # AdminUser.find(params[:id]).destroy
    # flash[:notice] = "Admin user destroyed."
    # redirect_to(:action => 'list')
  end
  
  
  private

    def publisher_params
      params.require(:publisher).permit(
                                        :name, 
                                        :address, 
                                        :city, 
                                        :state, 
                                        :country, 
                                        :zip,
                                        :phone, 
                                        :url, 
                                        :description, 
                                        :company_contact_name_first, 
                                        :company_contact_name_last,
                                        :company_contact_phone, 
                                        :company_contact_email, 
                                        :created_at, 
                                        :updated_at
                                       )
                                       
    end
  
  
  
end

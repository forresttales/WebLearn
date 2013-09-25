class AdminContactsController < ApplicationController
  
  layout 'admin'
  
  before_filter :confirm_logged_in  
  
  def list

    @admin_contacts = Contact.paginate(page: params[:page]).per_page(5)
    #@products = Product.order("name").page(params[:page]).per_page(10)



    # gon.contacts = Contact.all
    # gon.count = Contact.count

    # @test = "test msg"
     
    # @contacts = Contact.all
    
    
  end
  
  def new
  end
  
  def view
    @contact = Contact.find(params[:id])
    
    
    #render :template => 'view.js.erb'
    
    # @review = Review.create!(params[:review])
    # flash[:notice] = "Thank you for reviewing this product"
    
    # respond_to do |format|
      # format.html
      # format.js      
    # end
    
  end
    
  def show
  end
  
  def create
  end
  
  def edit
    render text: "in edit"
  end
  
  def update
  end

  def delete
    @contact = Contact.find(params[:id])
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.delete
    flash[:notice] = "Contact destroyed."
  end
  
  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to(login_path)
      return false # halts the before_filter
    else
      #redirect_to(:controller => 'admin_users', :action => 'list')
      return true
    end
  end
  
  def get_message
    
    respond_to do |format|
      format.html
      format.js      
    end    
  end
  
end

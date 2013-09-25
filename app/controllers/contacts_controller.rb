class ContactsController < ApplicationController
  
  #layout 'application'
  
  def list
    #@contacts = Contact.all
  end
  
  def index
    render('new')    
  end
  
  def new
  end
  
  def show
    @contact = Contact.find_by_id(params[:saved_id])
  end
  
  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      @saved_id = @contact.id
      flash[:notice] = 'Message sent'
      redirect_to(:action => 'show', :saved_id => @contact.id)
    else
      flash[:notice] = 'Unable to send message'
    end
    
  end
  
  def edit
    @contact = Contact.find_by_id(params[:id])    
  end
  
  def update
    
    @contact = Contact.find(params[:id])
    
    if @contact.update_attributes(params[:contact])
      flash[:notice] = "Contact updated."
      redirect_to(:action => 'show', :saved_id => @contact.id)
    else
      # @subject_count = Subject.count
      # render('edit')
    end    
  end

  def delete
  end

  def destroy
  end
  
end

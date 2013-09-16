class UserContactsController < ApplicationController
  
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
    @user_contact = Contact.find_by_id(params[:saved_id])
  end
  
  def create
    @user_contact = Contact.new(params[:user_contact])

    if @user_contact.save
      @saved_id = @user_contact.id
      flash[:notice] = 'Message sent'
      redirect_to(:action => 'show', :saved_id => @user_contact.id)
    else
      flash[:notice] = 'Unable to send message'
    end
    
  end
  
  def edit
    @user_contact = Contact.find_by_id(params[:id])    
  end
  
  def update
    
    @user_contact = Contact.find(params[:id])
    
    if @user_contact.update_attributes(params[:user_contact])
      flash[:notice] = "Contact updated."
      redirect_to(:action => 'show', :saved_id => @user_contact.id)
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

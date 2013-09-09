class ContactsController < ApplicationController
  
  layout 'admin'
  
  def list
    @contacts = Contact.all
  end
  
  def new
  end
  
  def show
  end
  
  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      flash[:notice] = 'Message sent'
      
      redirect_to(:action => 'list')
    else
      flash[:notice] = 'Unable to send message'
    end
  end
  
  def edit
  end
  
  def update
  end

  def delete
  end

  def destroy
  end
  
end

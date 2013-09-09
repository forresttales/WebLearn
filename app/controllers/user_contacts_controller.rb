class UserContactsController < ApplicationController
  
  
  def list
    #@contacts = Contact.all
  end
  
  def index
    render('new')    
  end
  
  def new
  end
  
  def show
  end
  
  def create
    @user_contact = Contact.new(params[:user_contact])
# 
    # if @contact.save
      # #flash[:notice] = 'Message sent'
#       
      # #redirect_to(:action => 'list')
    # else
      # #flash[:notice] = 'Unable to send message'
    # end
    
    # contact = Contact.new
    # contact.name = "testname3"
    # contact.email = "test@mail.com"
    # contact.subject = "testsubject"
    # contact.message = "test message"
        
    # u = User.new
    # u.name = "clyde"
    #render text: u.inspect
    
    #@contact = Contact.new(params[:contact])
    
    

    if @user_contact.save
      #flash[:notice] = 'Message sent'
      #redirect_to(:action => 'list')
    render text: "Message sent"
      
    else
      #flash[:notice] = 'Unable to send message'
      render text: "Save failed"      
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

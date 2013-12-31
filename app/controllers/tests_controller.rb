class TestsController < ApplicationController

  layout 'test'
  
  
  def list

    # @admin_reg_letters = RegLetter.paginate(page: params[:page]).per_page(50)

    # gon.contacts = Contact.all
    # gon.count = Contact.count

  end
  
  def new
  end
  
  def view
    
    # @review = Review.create!(params[:review])
    
  end
    
  def show
    # @reg_letter = RegLetter.find(params[:id])
    
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end

  def delete
  end

  def destroy
    
    # reg_letter = RegLetter.find(params[:id])
    # reg_letter.delete
    # redirect_to(admin_letters_list_path)
    
  end
  
end

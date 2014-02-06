class ImageInstitutesController < ApplicationController
  
  layout 'institute'

  
  def index
    
    images = ImageInstitute.where("institute_id = ?", session[:institute_id])       


    prim_index = 0
    prim_id    = 0
    aimages = Array.new
    aimages_prim = Array.new
    aimages_all = Array.new
    
    for i in 0..(images.count - 1)
      # aimages_all.insert(0, images[i])      
      if images[i].primary
        prim_index = i
        prim_id = images[i].id
        aimages_prim.insert(0, images[i])          
      else
        aimages.insert(0, images[i])
        aimages_all.insert(0, images[i])      
      end
    end
    
    aimages_all.insert(0, aimages_prim[0])      
    
    
    
    gon.aimages_all = aimages_all

    @image_institutes = aimages_all
    
    gon.prim_index = prim_index
    gon.prim_id = prim_id
    
    gon.image_institutes = @image_institutes
    gon.image_institutes_count = @image_institutes.count
    
  end

  
  def new
    
  end


  def upload

    uploaded_io = params[:upload_file]

    File.open(Rails.root.join('public', 'images_institute', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end

    image_institute = ImageInstitute.new
    image_institute.image_name = uploaded_io.original_filename
    image_institute.institute_id = session[:institute_id]
    
    images = ImageInstitute.where("institute_id = ?", session[:institute_id])
    if images.count == 0
      image_institute.primary = true
    else
      image_institute.primary = false     
    end    
    
    if image_institute.save
        session[:image_institute_upload_status] = true
    else
        session[:image_institute_upload_status] = false
    end    
    
    render 'create'
    
    
  end


  def create
    
    @image_institute = Institute.new(image_institute_params)
    if @image_institute.save
        
        redirect_to action: "index"
        
    else
      render 'new'
    end
    
    
  end


  def show
    
     # render 'upload'
    
  end    


  def destroy
     
     # render text: 'destroy'
     
    image_institute = ImageInstitute.find(params[:id])
    if image_institute.delete
      
        File.delete(Rails.root.join('public', 'images_institute', image_institute.image_name))
        # File.delete(Rails.root + '/foo.jpg')
      
      redirect_to(image_institutes_index_path)
    else
      render text: 'delete failed'
    end
     
  end


  def set_primary

    image_institutes = ImageInstitute.where("institute_id = ?", session[:institute_id])       
 
    for i in 0..(image_institutes.count - 1)
      image_institutes[i].primary = false
      if image_institutes[i].save
        
      else 
        render text: 'update images to false has failed'
      end
      
    end


    image_institute_updated = ImageInstitute.find(params[:id])
    image_institute_updated.primary = true
    if image_institute_updated.save
      redirect_to action: "index"
    else
      render text: 'set primary failed'
    end
        
  end



  private

    def image_institute_params
      params.require(:image_institute).permit(      
                                              :institute_id, 
                                              :image_name 
                                              )
                                        
    end

  
  
end

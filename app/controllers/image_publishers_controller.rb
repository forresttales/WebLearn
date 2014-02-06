class ImagePublishersController < ApplicationController
  
  layout 'publisher'

  
  def index
    
    images = ImagePublisher.where("publisher_id = ?", session[:publisher_id])       


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

    @image_publishers = aimages_all
    
    gon.prim_index = prim_index
    gon.prim_id = prim_id
    
    gon.image_publishers = @image_publishers
    gon.image_publishers_count = @image_publishers.count
    
  end

  
  def new
    
  end


  def upload

    uploaded_io = params[:upload_file]

    File.open(Rails.root.join('public', 'images_publisher', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end

    image_publisher = ImagePublisher.new
    image_publisher.image_name = uploaded_io.original_filename
    image_publisher.publisher_id = session[:publisher_id]
    
    images = ImagePublisher.where("publisher_id = ?", session[:publisher_id])
    if images.count == 0
      image_publisher.primary = true
    else
      image_publisher.primary = false     
    end    
    
    if image_publisher.save
        session[:image_publisher_upload_status] = true
    else
        session[:image_publisher_upload_status] = false
    end    
    
    render 'create'
    
    
  end


  def create
    
    @image_publisher = Publisher.new(image_publisher_params)
    if @image_publisher.save
        
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
     
    image_publisher = ImagePublisher.find(params[:id])
    if image_publisher.delete
      
        File.delete(Rails.root.join('public', 'images_publisher', image_publisher.image_name))
        # File.delete(Rails.root + '/foo.jpg')
      
      redirect_to(image_publishers_index_path)
    else
      render text: 'delete failed'
    end
     
  end


  def set_primary

    image_publishers = ImagePublisher.where("publisher_id = ?", session[:publisher_id])       
 
    for i in 0..(image_publishers.count - 1)
      image_publishers[i].primary = false
      if image_publishers[i].save
        
      else 
        render text: 'update images to false has failed'
      end
      
    end


    image_publisher_updated = ImagePublisher.find(params[:id])
    image_publisher_updated.primary = true
    if image_publisher_updated.save
      redirect_to action: "index"
    else
      render text: 'set primary failed'
    end
        
  end



  private

    def image_publisher_params
      params.require(:image_publisher).permit(      
                                              :publisher_id, 
                                              :image_name 
                                              )
                                        
    end

  
end

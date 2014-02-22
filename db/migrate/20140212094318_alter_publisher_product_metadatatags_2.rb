class AlterPublisherProductMetadatatags2 < ActiveRecord::Migration
  def change
    
    add_column :publisher_product_metadatatags, :text_metadata, :text    
    
  end
end

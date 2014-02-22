class AlterPublisherProductMetadatatags1 < ActiveRecord::Migration
  def change
    
    remove_column("publisher_product_metadatatags", "image_name")
    
    add_column :publisher_product_metadatatags, :name_metadata, :string, :limit => 100    
    
  end
end

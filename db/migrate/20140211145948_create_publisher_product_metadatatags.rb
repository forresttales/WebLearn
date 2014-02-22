class CreatePublisherProductMetadatatags < ActiveRecord::Migration
  def change
    create_table :publisher_product_metadatatags do |t|

      t.integer "publisher_id"
      t.integer "publisher_product_id"
      t.string "image_name", :limit => 100

      t.timestamps
    end
    
    add_index("publisher_product_metadatatags", "publisher_id")
    add_index("publisher_product_metadatatags", "publisher_product_id")
    
  end
end

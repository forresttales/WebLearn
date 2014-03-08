class AlterTestOptouts2 < ActiveRecord::Migration
  def change
    
    # remove_column("publisher_product_metadatatags", "image_name")
    
    add_column :test_optouts, :col_id, :string, :limit => 50    
    
  end
end

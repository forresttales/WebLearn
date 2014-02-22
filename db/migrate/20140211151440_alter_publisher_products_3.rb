class AlterPublisherProducts3 < ActiveRecord::Migration
  def change
    
      add_column :publisher_products, :product_metadata, :string, :limit => "100"    
      add_column :publisher_products, :has_product_metadata, :boolean, :default => false    
    
  end
end

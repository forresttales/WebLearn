class AlterPublisherProducts2 < ActiveRecord::Migration
  def change

      add_column :publisher_products, :product_logo, :string, :limit => "100"    
      add_column :publisher_products, :has_product_logo, :boolean, :default => false    
    
  end
end

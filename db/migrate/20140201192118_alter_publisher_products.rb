class AlterPublisherProducts < ActiveRecord::Migration
  def change
    
    add_column :publisher_products, :has_description, :boolean, :default => false    
    
  end
end

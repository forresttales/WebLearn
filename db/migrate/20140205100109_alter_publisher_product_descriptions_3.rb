class AlterPublisherProductDescriptions3 < ActiveRecord::Migration
  def change
    
    add_column :publisher_product_descriptions, :type_content_index, :integer    
    add_column :publisher_product_descriptions, :subject_category_index, :integer    
    
  end
end

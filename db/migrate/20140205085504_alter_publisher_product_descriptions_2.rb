class AlterPublisherProductDescriptions2 < ActiveRecord::Migration
  def change
    
    add_column :publisher_product_descriptions, :type_content, :string, :limit => 50    
    add_column :publisher_product_descriptions, :subject_category, :string, :limit => 50    
    add_column :publisher_product_descriptions, :word_description, :string, :limit => 1000    
    
  end
end

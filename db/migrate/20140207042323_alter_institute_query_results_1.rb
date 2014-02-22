class AlterInstituteQueryResults1 < ActiveRecord::Migration
  def change
    
    add_column :institute_query_results, :publisher_product_description_id, :integer    
    
  end
end

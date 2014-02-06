class AlterInstituteQueries2 < ActiveRecord::Migration
  def change
    
    add_column :institute_queries, :type_content_index, :integer    
    add_column :institute_queries, :subject_category_index, :integer    
    
  end
end

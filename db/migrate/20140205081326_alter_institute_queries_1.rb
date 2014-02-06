class AlterInstituteQueries1 < ActiveRecord::Migration
  def change
    
    add_column :institute_queries, :type_content, :string, :limit => 50    
    add_column :institute_queries, :subject_category, :string, :limit => 50    
    add_column :institute_queries, :word_description, :string, :limit => 1000    
    
  end
end

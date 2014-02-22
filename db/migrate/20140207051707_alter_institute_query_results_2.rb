class AlterInstituteQueryResults2 < ActiveRecord::Migration
  def change
    
    add_column :institute_query_results, :description, :string, :limit => 200    
    
  end
end

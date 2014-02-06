class CreateInstituteQueryResults < ActiveRecord::Migration
  def change
    create_table :institute_query_results do |t|

      t.integer "institute_id"
      t.integer "institute_query_id"
      t.string "name_result", :limit => 100

      t.timestamps
    end
    
    add_index("institute_query_results", "institute_id")
    add_index("institute_query_results", "institute_query_id")
    
  end
end

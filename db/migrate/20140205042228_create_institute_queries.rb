class CreateInstituteQueries < ActiveRecord::Migration
  def change
    create_table :institute_queries do |t|

      t.integer "institute_id"
      t.string "name_query", :limit => 100
      t.boolean "has_result", :default => false

      t.timestamps
    end
    
    add_index("institute_queries", "institute_id")
    
  end
end

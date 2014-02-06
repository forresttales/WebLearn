class CreateInstituteSettings < ActiveRecord::Migration
  def change
    create_table :institute_settings do |t|

      t.integer "institute_id"
      t.string "background", :limit => 100

      t.timestamps
    end
    
    add_index("institute_settings", "institute_id")
    
  end
end

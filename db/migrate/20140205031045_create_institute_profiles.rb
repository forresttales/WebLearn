class CreateInstituteProfiles < ActiveRecord::Migration
  def change
    create_table :institute_profiles do |t|

      t.integer "institute_id"
      t.string "name_logo", :limit => 100
      t.boolean "has_logo", :default => false

      t.timestamps
    end
    
    add_index("institute_profiles", "institute_id")
    
  end
end

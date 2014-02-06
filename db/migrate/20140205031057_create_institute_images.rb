class CreateInstituteImages < ActiveRecord::Migration
  def change
    create_table :institute_images do |t|

      t.integer "institute_id"
      t.string "image_name", :limit => 100
      t.boolean "primary", :default => false

      t.timestamps
    end
    
    add_index("institute_images", "institute_id")
    
  end
end

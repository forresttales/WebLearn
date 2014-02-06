class CreateImageInstitutes < ActiveRecord::Migration
  def change
    create_table :image_institutes do |t|

      t.integer "institute_id"
      t.string "image_name", :limit => 100
      t.boolean "primary", :default => false

      t.timestamps
    end
    
    add_index("image_institutes", "institute_id")
    
  end
end

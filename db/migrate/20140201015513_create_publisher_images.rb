class CreatePublisherImages < ActiveRecord::Migration
  def change
    create_table :publisher_images do |t|

      t.integer "publisher_id"
      t.string "image_name", :limit => 100
      t.boolean "primary", :default => false

      t.timestamps
    end
    
    add_index("publisher_images", "publisher_id")
    
  end
end

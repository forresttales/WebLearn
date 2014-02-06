class CreatePublisherProfiles < ActiveRecord::Migration
  def change
    create_table :publisher_profiles do |t|

      t.integer "publisher_id"
      t.string "name_logo", :limit => 100
      t.boolean "has_logo", :default => false

      t.timestamps
    end
    
    add_index("publisher_profiles", "publisher_id")
    
  end
end

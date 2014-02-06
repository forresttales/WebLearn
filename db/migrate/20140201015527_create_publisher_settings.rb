class CreatePublisherSettings < ActiveRecord::Migration
  def change
    create_table :publisher_settings do |t|

      t.integer "publisher_id"
      t.string "background", :limit => 100

      t.timestamps
    end
    
    add_index("publisher_settings", "publisher_id")
    
  end
end

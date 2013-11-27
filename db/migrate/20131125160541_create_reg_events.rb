class CreateRegEvents < ActiveRecord::Migration
  def change
    create_table :reg_events do |t|

      t.string "name_first", :limit => 50
      t.string "name_last", :limit => 50
      t.string "name_title", :limit => 50
      t.string "type_affiliation", :limit => 50
      t.string "name_affiliation", :limit => 100
      t.string "address", :limit => 100
      t.string "city", :limit => 50
      t.string "state", :limit => 50
      t.string "zip", :limit => 10
      t.string "phone", :limit => 50
      t.string "email", :default => "", :null => false
      t.string "city_workshop", :limit => 50

      t.timestamps
    end
  end
end

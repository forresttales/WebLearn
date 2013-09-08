class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string "name", :limit => 50
      t.string "email", :default => "", :null => false
      t.string "subject", :limit => 50
      t.text   "message", :limit => 1000      
      t.timestamps
    end
  end
end

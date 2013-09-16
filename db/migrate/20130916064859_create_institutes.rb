class CreateInstitutes < ActiveRecord::Migration
  def change
    create_table :institutes do |t|
      t.string "name", :limit => 50
      t.string "email", :default => "", :null => false
      t.string "address", :limit => 50
      t.text   "contacts", :limit => 1000      
      t.timestamps
    end
  end
end

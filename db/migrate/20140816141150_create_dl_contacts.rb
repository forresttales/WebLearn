class CreateDlContacts < ActiveRecord::Migration
  def change
    create_table :dl_contacts do |t|

      t.string "name_first", :default => "", :null => false
      t.string "name_last", :default => "", :null => false
      t.string "name_title", :default => "", :null => false
      t.string "position_title", :default => "", :null => false
      t.string "email", :default => "", :null => false
      t.string "phone", :default => "", :null => false
      t.string "name_pdf", :default => "", :null => false
      t.integer "int_pdf", :default => 0
      
      t.timestamps
    end
  end
end

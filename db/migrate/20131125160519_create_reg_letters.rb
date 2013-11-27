class CreateRegLetters < ActiveRecord::Migration
  def change
    create_table :reg_letters do |t|

      t.string "email", :default => "", :null => false
      t.string "name_title", :limit => 50
      t.string "name_affiliation", :limit => 100      

      t.timestamps
    end
  end
end

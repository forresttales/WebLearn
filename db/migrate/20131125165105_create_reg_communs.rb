class CreateRegCommuns < ActiveRecord::Migration
  def change
    create_table :reg_communs do |t|

      t.string "name_first", :limit => 50
      t.string "name_last", :limit => 50
      t.string "name_title", :limit => 50
      t.string "name_affiliation", :limit => 100
      t.string "public_private", :limit => 10      
      t.string "address", :limit => 100
      t.string "city", :limit => 50
      t.string "state", :limit => 50
      t.string "zip", :limit => 10
      t.string "phone", :limit => 50
      t.string "email", :default => "", :null => false
      t.string "level", :limit => 50
      t.string "institution_size", :limit => 50
      t.string "characterize_decision", :limit => 50
      t.text "characterize_area", :limit => 1000
      t.text "survey_preferences", :limit => 1000

      t.timestamps
    end
  end
end

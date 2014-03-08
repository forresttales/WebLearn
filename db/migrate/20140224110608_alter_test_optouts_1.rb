class AlterTestOptouts1 < ActiveRecord::Migration
  def change
    
    create_table :test_optouts do |t|

      t.string "col_1", :limit => 300
      t.string "col_2", :limit => 300
      t.string "col_3", :limit => 300
      t.string "col_4", :limit => 300
      t.string "col_5", :limit => 300
      t.string "col_6", :limit => 300
      t.string "col_7", :limit => 300
      t.string "col_8", :limit => 300
      t.string "col_9", :limit => 300
      t.string "col_10", :limit => 300

      t.string "col_11", :limit => 300
      t.string "col_12", :limit => 300
      t.string "col_13", :limit => 300
      t.string "col_14", :limit => 300
      t.string "col_15", :limit => 300
      t.string "col_16", :limit => 300
      t.string "col_17", :limit => 300
      t.string "col_18", :limit => 300
      t.string "col_19", :limit => 300
      t.string "col_20", :limit => 300

      t.string "col_21", :limit => 300
      t.string "col_22", :limit => 300
      t.string "col_23", :limit => 300
      t.string "col_24", :limit => 300
      t.string "col_25", :limit => 300
      t.string "col_26", :limit => 300
      t.string "col_27", :limit => 300
      t.string "col_28", :limit => 300
      t.string "col_29", :limit => 300
      t.string "col_30", :limit => 300

      t.string "col_31", :limit => 300
      t.string "col_32", :limit => 300
      t.string "col_33", :limit => 300
      t.string "col_34", :limit => 300
      t.string "col_35", :limit => 300
      t.string "col_36", :limit => 300
      t.string "col_37", :limit => 300
      t.string "col_38", :limit => 300
      t.string "col_39", :limit => 300
      t.string "col_40", :limit => 300

      t.integer "col_41", :default => 0
      t.integer "col_42", :default => 0
      t.integer "col_43", :default => 0
      t.integer "col_44", :default => 0
      t.integer "col_45", :default => 0
      t.integer "col_46", :default => 0
      t.integer "col_47", :default => 0
      t.integer "col_48", :default => 0
      t.integer "col_49", :default => 0
      t.integer "col_50", :default => 0
    
      t.timestamps
    end
    
  end
end

class CreateRegSeminars < ActiveRecord::Migration
  def change
    create_table :reg_seminars do |t|

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
      t.string "email", :limit => 100
      t.string "email_cc_1", :limit => 100
      t.string "email_cc_2", :limit => 100
      t.boolean "reg_seminar_1", :default => 'FALSE'
      t.string "reg_seminar_1_text", :string, :limit => 100

      t.timestamps
    end
  end
end

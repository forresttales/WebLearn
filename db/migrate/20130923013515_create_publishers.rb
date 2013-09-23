class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      
      t.string "name", :limit => 100
      t.string "address", :limit => 100
      t.string "city", :limit => 100
      t.string "state", :limit => 50
      t.string "country", :limit => 100
      t.integer "zip"
      t.string "phone", :limit => 100
      t.string "url", :limit => 100
      t.text "description"
      t.string "company_contact_name_first", :limit => 100
      t.string "company_contact_name_last", :limit => 100
      t.string "company_contact_phone", :limit => 100
      t.string "company_contact_email", :limit => 100
      
      t.timestamps
    end
  end
end

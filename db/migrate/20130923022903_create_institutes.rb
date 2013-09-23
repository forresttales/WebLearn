class CreateInstitutes < ActiveRecord::Migration
  def change
    create_table :institutes do |t|
      
      t.string "name", :limit => 100
      t.string "address", :limit => 100
      t.string "city", :limit => 100
      t.string "state", :limit => 50
      t.string "country", :limit => 100
      t.integer "zip"
      t.string "main_phone", :limit => 100
      t.string "main_contact_email", :limit => 100
      t.string "public_private", :limit => 10
      t.integer "number_students"
      t.integer "number_computing_devices"
      t.string "post_rfp_link", :limit => 100
      t.string "company_contact_name_first", :limit => 100      
      t.string "company_contact_name_last", :limit => 100
      t.string "name_title", :limit => 50
      t.string "company_contact_phone", :limit => 50
      t.string "company_contact_email", :limit => 100
      t.boolean "allow_add_products"     

      t.timestamps      
    end
  end
end

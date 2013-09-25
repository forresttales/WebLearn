class CreateEdmatchs < ActiveRecord::Migration
  def change
    create_table :edmatchs do |t|
      t.integer "institute_id"
      t.text   "result", :limit => 1000      

      t.timestamps
    end
  end
end

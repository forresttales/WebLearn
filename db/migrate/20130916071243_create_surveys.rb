class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer "institute_id"      
      t.string "name", :limit => 50
      t.timestamps
    end
  end
end

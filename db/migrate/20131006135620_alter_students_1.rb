class AlterStudents1 < ActiveRecord::Migration
  def change
    add_column("students", "name_first", :string, :limit => 50)    
    add_column("students", "name_last", :string, :limit => 50)    
    add_column("students", "phone", :string, :limit => 50)    
    
  end
end

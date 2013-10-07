class AlterTeachers1 < ActiveRecord::Migration
  def change
    add_column("teachers", "name_first", :string, :limit => 50)    
    add_column("teachers", "name_last", :string, :limit => 50)    
    add_column("teachers", "phone", :string, :limit => 50)    
    
  end
end

class AlterStudents3 < ActiveRecord::Migration
  def change
    
    remove_column("students", "name_first")
    remove_column("students", "name_last")
    
  end
end

class AlterUsers5 < ActiveRecord::Migration
  def change
    remove_column("users", "name_first")    
    remove_column("users", "name_last")    
    
  end
end

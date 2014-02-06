class AlterUsers7 < ActiveRecord::Migration
  def change
    
    remove_column("users", "admin")
    remove_column("users", "name_first")
    remove_column("users", "name_last")
    remove_column("users", "account_id")
    
  end
end

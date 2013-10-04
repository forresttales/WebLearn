class AlterUsers4 < ActiveRecord::Migration
  def change
    remove_column("users", "admin")    
    add_column :users, :admin, :boolean, :default => "FALSE"    
  end
end

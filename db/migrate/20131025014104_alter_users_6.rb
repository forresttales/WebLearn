class AlterUsers6 < ActiveRecord::Migration
  def change
    add_column("users", "name_first", :string, :limit => 50)    
    add_column("users", "name_last", :string, :limit => 50)        
  end
end

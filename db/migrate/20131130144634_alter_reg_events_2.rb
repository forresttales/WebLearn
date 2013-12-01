class AlterRegEvents2 < ActiveRecord::Migration
  def change
    remove_column("reg_events", "address1")
    remove_column("reg_events", "city1")    
    remove_column("reg_events", "state1")    
    remove_column("reg_events", "zip1")    
    remove_column("reg_events", "phone1")    
        
    add_column("reg_events", "address", :string, :limit => 50)    
    add_column("reg_events", "city", :string, :limit => 50)    
    add_column("reg_events", "state", :string, :limit => 50)    
    add_column("reg_events", "zip", :string, :limit => 50)    
    add_column("reg_events", "phone", :string, :limit => 50)    
    
  end
end

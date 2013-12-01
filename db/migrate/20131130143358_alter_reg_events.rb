class AlterRegEvents < ActiveRecord::Migration
  def change
    remove_column("reg_events", "address")
    remove_column("reg_events", "city")    
    remove_column("reg_events", "state")    
    remove_column("reg_events", "zip")    
    remove_column("reg_events", "phone")    
        
    add_column("reg_events", "address1", :string, :limit => 50)    
    add_column("reg_events", "city1", :string, :limit => 50)    
    add_column("reg_events", "state1", :string, :limit => 50)    
    add_column("reg_events", "zip1", :string, :limit => 50)    
    add_column("reg_events", "phone1", :string, :limit => 50)    
    
  end
end

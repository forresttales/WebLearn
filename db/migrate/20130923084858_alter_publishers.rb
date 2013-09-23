class AlterPublishers < ActiveRecord::Migration
  def change
    add_column("publishers", "username", :string, :limit => 50)    
    add_column("publishers", "hashed_password", :string)
    add_column("publishers", "salt", :string, :limit => 100)    
    puts "*** About to add an index ***"
    add_index("publishers", "username")    
  end
end

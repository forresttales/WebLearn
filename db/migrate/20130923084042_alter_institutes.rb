class AlterInstitutes < ActiveRecord::Migration
  def change
    add_column("institutes", "username", :string, :limit => 50)    
    add_column("institutes", "hashed_password", :string)
    add_column("institutes", "salt", :string, :limit => 100)    
    puts "*** About to add an index ***"
    add_index("institutes", "username")
  end
end

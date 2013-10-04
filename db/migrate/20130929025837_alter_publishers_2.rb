class AlterPublishers2 < ActiveRecord::Migration
  def change
    remove_index("publishers", "username")
    remove_column("publishers", "username")    
    remove_column("publishers", "salt")
    remove_column("publishers", "hashed_password")
  end
end

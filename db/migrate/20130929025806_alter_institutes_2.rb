class AlterInstitutes2 < ActiveRecord::Migration
  def change
    remove_index("institutes", "username")
    remove_column("institutes", "username")    
    remove_column("institutes", "salt")
    remove_column("institutes", "hashed_password")    
  end
end

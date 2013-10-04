class AlterRegisters3 < ActiveRecord::Migration
  def change
    remove_column("registers", "hashed_password")    
    remove_column("registers", "salt")    
  end
end

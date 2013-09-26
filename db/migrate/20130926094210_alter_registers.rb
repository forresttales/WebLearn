class AlterRegisters < ActiveRecord::Migration
  def change
    add_index :registers, [:account_id, :username]    
  end
end

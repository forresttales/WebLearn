class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.integer :account_id
      t.string :username, :limit => 50
      t.string :hashed_password
      t.string :salt            
      t.boolean :has_account     
      t.string :account_type            
      t.timestamps
    end
        
  end

end

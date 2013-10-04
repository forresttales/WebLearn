class AlterUsers3 < ActiveRecord::Migration
  def change
    add_column :users, :account_id, :integer

    add_column :users, :name_first, :string, :limit => 50
    add_column :users, :name_last, :string, :limit => 50
    add_column :users, :email, :string, :default => "", :limit => 50    
    add_column :users, :username, :string, :limit => 50
    add_column :users, :has_account, :boolean
    add_column :users, :account_type, :string, :limit => 50
    add_column :users, :admin, :boolean
    add_column :users, :password_digest, :string
    add_column :users, :remember_token, :string
    remove_column("users", "name")    
    
    add_index :users, :remember_token
  end
end

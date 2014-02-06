class AlterUsers8 < ActiveRecord::Migration
  def change
    
    remove_column("users", "has_account")
    remove_column("users", "account_type")

    add_column :users, :account_type, :string, :limit => 50, :default => nil    
    add_column :users, :has_account, :boolean, :default => false    
    
  end
end

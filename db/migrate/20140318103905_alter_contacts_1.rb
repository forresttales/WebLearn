class AlterContacts1 < ActiveRecord::Migration
  def change
    add_column :contacts, :phone, :string, :limit => 100        
  end
end

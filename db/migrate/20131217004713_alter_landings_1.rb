class AlterLandings1 < ActiveRecord::Migration
  def change
    
    add_column :landings, :name, :string, :limit => 100
    add_column :landings, :email, :string, :limit => 100
    add_column :landings, :company, :string, :limit => 100
    
  end
end

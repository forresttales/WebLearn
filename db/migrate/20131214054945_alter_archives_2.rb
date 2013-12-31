class AlterArchives2 < ActiveRecord::Migration
  def change
    
    add_column :archives, :description, :string, :limit => 100    
    
  end
end

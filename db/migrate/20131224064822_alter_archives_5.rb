class AlterArchives5 < ActiveRecord::Migration
  def change
    
    add_column :archives, :slug, :string, :limit => 200
    add_index :archives, :slug, unique: true
    
  end
end

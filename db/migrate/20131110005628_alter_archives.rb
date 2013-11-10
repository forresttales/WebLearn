class AlterArchives < ActiveRecord::Migration
  def change
    remove_column :archives, :type    
    add_column :archives, :article_type, :string, :limit => 20
    add_index :archives, :article_id    
  end
end

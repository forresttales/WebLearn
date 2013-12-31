class AlterArchives3 < ActiveRecord::Migration
  def change

    add_column :archives, :linkimg, :string, :limit => 50
    add_column :archives, :linkimg_url, :string, :limit => 50
    
  end
end

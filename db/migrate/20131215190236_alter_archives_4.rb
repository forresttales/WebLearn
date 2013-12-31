class AlterArchives4 < ActiveRecord::Migration
  def change
    
    add_column :archives, :linktitle, :string, :limit => 200
    
  end
end

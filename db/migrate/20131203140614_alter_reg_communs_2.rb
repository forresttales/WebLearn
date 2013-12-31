class AlterRegCommuns2 < ActiveRecord::Migration
  def change
    
    remove_column("reg_communs", "public_private")    
    
    
    add_column :reg_communs, :level_other, :string, :limit => 100        
    
    
  end
end
